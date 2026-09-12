import os
from cs50 import SQL
from flask import Flask, flash, redirect, render_template, request, session
from flask_session import Session
from werkzeug.security import check_password_hash, generate_password_hash

from functions import apology, login_required, guest_pan, send_otp
from datetime import datetime, timedelta
import random
import string
import smtplib
from email.message import EmailMessage

# Configure application
app = Flask(__name__)

# Configure session to use filesystem (instead of signed cookies)
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

# Configure CS50 Library to use SQLite database
db = SQL("sqlite:///smartline.db")


@app.after_request
def after_request(response):
  """Ensure responses aren't cached"""
  response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
  response.headers["Expires"] = 0
  response.headers["Pragma"] = "no-cache"
  return response

@app.context_processor
def inject_roles():
  if "user_id" not in session :
    return dict(my_roles=[], comp = "")
  id = session["user_id"]
  user = db.execute("SELECT * FROM users WHERE id = ?", id)
  my_roles = []
  comp = ""
  if len(db.execute("SELECT * FROM managers WHERE user_id = ?", id)) == 1 :
    my_roles.append("manager")
    comp = db.execute("SELECT * FROM managers WHERE user_id = ?", id)
  if len(db.execute("SELECT * FROM providers WHERE user_id = ?", id)) == 1 :
    my_roles.append("prov")
    comp = db.execute("SELECT * FROM providers JOIN managers ON providers.manager_id = managers.id WHERE providers.user_id = ?", id)
  if comp :
    return dict(my_roles=my_roles, comp=comp[0]["company_name"])
  return dict(my_roles=my_roles, comp= "" )
@app.route("/")
@login_required
def index():
  return apology("home")


@app.route("/register", methods=["GET", "POST"])
@guest_pan
def register():
  """Register user"""
  if request.method == "POST":
    name = request.form.get("name")
    email = request.form.get("email")
    password = request.form.get("password")
    confirmation = request.form.get("confirmation")


    if email:
      if len(email) > 128 :
        flash("the max length is 128")
        return redirect("/register")
      check = db.execute("SELECT * FROM users WHERE email = ?", email.strip().lower())
      if check :
        if not check[0]["is_verified"] :
          if ( datetime.now() - datetime.strptime(check[0]["created_at"], "%Y-%m-%d %H:%M:%S") ) > timedelta(minutes=10) :
            db.execute("DELETE FROM users WHERE id = ?", check[0]["id"])
          else :
            flash("try again in a few minutes", category="no")
            return redirect("/register")
        else :
          flash("this email is already registered", category="no")
          return redirect("/register")
    else:
      flash("entry email pls", category="no")
      return redirect("/register")

    if not name:
      flash("entry name pls", category="no")
      return render_template("register.html", email=email, name="")
    if len(name) > 40 or len(name) < 2 :
      flash("the length of name should be not more than 40 or less than 3", category="no")
      return render_template("register.html", email=email, name="")
    if not password or not confirmation or not password == confirmation:
      flash("type password correct and the same in two fildes", category="no")
      return render_template("register.html", email=email, name=name)
    if len(password) < 8:
      flash("password must be at least 8 character", category="no")
      return render_template("register.html", email=email, name=name)
    if len(password) > 128:
      flash("password must be at most 40 character", category="no")
      return render_template("register.html", email=email, name=name)

    code = str(random.randint(100000, 999999))

    db.execute("INSERT INTO users (name, email, hash_pass, verification_code) VALUES (?, ?, ?, ?)"
               ,name , email.strip().lower(), generate_password_hash(password), code)
    session["user_id"] = db.execute("SELECT id FROM users WHERE email = ?", email.strip().lower())[0]["id"]
    session["login_state"] = 1
    session["name"] = name
    session["role"] = "user"
    # send_otp(session["user_id"])
    return redirect("/verification")
  else:
    return render_template("register.html", email="", name="")


@app.route("/verification", methods=["GET","POST"])
def verification():
  if "user_id" not in session :
      return redirect("/login")
  if request.method == "POST" :
    code = request.form.get("code")
    user = db.execute("SELECT * FROM users WHERE id = ?", session["user_id"])[0]

    if not code or not code.isdigit():
      flash("enter code pls", category="no")
      return redirect("/verification")
    if int(code) == int(user["verification_code"]) and not ( datetime.now() - datetime.strptime(session.get("otp_expiry", "2007-09-23 18:30:00"), "%Y-%m-%d %H:%M:%S")) > timedelta(minutes=5):
      db.execute("UPDATE users SET is_verified = 1 WHERE id = ?", session["user_id"])
      session["login_state"] = 0
      return redirect("/")
    else :
      flash("pls enter correct code", category="no")
      return redirect("/verification")
  
  else :
    check = db.execute("SELECT * FROM users WHERE id = ?", session["user_id"])
    if ( datetime.now() - datetime.strptime(session.get("otp_expiry", "2007-09-23 18:30:00"), "%Y-%m-%d %H:%M:%S")) > timedelta(minutes=5) :
      code = str(random.randint(100000, 999999))
      db.execute("UPDATE users SET verification_code = ? WHERE id = ?", code,session["user_id"])
      send_otp(check[0]["id"])
      session["otp_expiry"] = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    return render_template("verification.html", email=check[0]["email"])
    # , code=check[0]["verification_code"]


@app.route("/guest", methods=["GET", "POST"])
def access():
  if request.method == "POST" :
    name = request.form.get("name")
    if not name :
      flash("enter your name pls", category="no")
      return redirect("/guest")
    session["login_state"] = 2
    session["name"] = name
    session["serv_count"] = 0
    return redirect("/")
  else :
    return render_template("guest.html")

@app.route("/guest_pan", methods=["GET"])
def pan():
  return render_template("guestPan.html")

@app.route("/login", methods=["GET", "POST"])
def login():
  """Log user in"""
  # Forget any user_id
  session.pop("user_id", None)
  session.pop("login_state", None)
  # User reached route via POST (as by submitting a form via POST)
  if request.method == "POST":
    # Ensure username was submitted
    if not request.form.get("email"):
      flash("must provide email", category="no")
      return redirect("/login")

    # Ensure password was submitted
    elif not request.form.get("password"):
      flash("must provide password", category="no")
      return render_template("login.html", email=request.form.get("email"))

    # Query database for username
    user = db.execute("SELECT * FROM users WHERE email = ?", request.form.get("email", "").strip().lower())

    # Ensure username exists and password is correct
    if len(user) != 1 :
      flash("invalid email", category="no")
      return redirect("/login")
    
    if not check_password_hash(user[0]["hash_pass"], request.form.get("password", "").strip()) :
      flash("invalid password", category="no")
      return render_template("login.html", email=request.form.get("email"))

    if not user[0]["is_verified"]:
      session["user_id"] = user[0]["id"]
      session["login_state"] = 1
      session["name"] = user[0]["name"]
      session["role"] = "user"
      return redirect("/verification")
    # Remember which user has logged in
    session["user_id"] = user[0]["id"]
    session["login_state"] = 0
    session["name"] = user[0]["name"]
    session["role"] = "user"
    # Redirect user to home page
    return redirect("/")

  # User reached route via GET (as by clicking a link or via redirect)
  else:
    return render_template("login.html", email="")

@app.route("/switch-role/<role>")
@login_required
@guest_pan
def switch_role(role):
  if role == "provider":
      check = db.execute("SELECT * FROM providers WHERE user_id = ?", session["user_id"])
      if not check:
          return apology("you're not a provider")
      session["role"] = "prov"
      return redirect("/")
      return redirect("/provider/queue")

  elif role == "manager":
      check = db.execute("SELECT * FROM managers WHERE user_id = ?", session["user_id"])
      if not check:
          return apology("you're not a manager")
      session["role"] = "manager"
      return redirect("/")
      return redirect("/manager/dashboard")
  else:
      session["role"] = "user"
      return redirect("/")
      return redirect("/find")

@app.route("/logout")
def logout():
  """Log user out"""

  # Forget any user_id
  session.clear()

  # Redirect user to login form
  return redirect("/")

@app.route ("/profile")
@login_required
@guest_pan
def profile() :
    user = db.execute("SELECT * FROM users WHERE id = ?", session["user_id"])
    comp = ""
    code = ""
    totalProv = ""
    if session.get("role") == "prov" :
      prov = db.execute("SELECT * FROM providers JOIN managers ON managers.id = providers.manager_id WHERE providers.user_id = ?", session["user_id"])
      comp = prov[0]["company_name"]
      code = prov[0]["invite_code"]
      if not comp :
        comp = ""
    elif session.get("role") == "manager" :
      manager = db.execute("SELECT * FROM managers WHERE user_id = ?", session["user_id"])
      comp = manager[0]["company_name"]

    return render_template("profile.html", mail=user[0]["email"],comp=comp, totalProv=totalProv,code=code)

@app.route ("/profile/update-info/", methods=["POST"])
@login_required
@guest_pan
def updateInfoProfile() :
  user = db.execute("SELECT * FROM users WHERE id = ?", session["user_id"])[0]
  name = request.form.get("name")
  email = request.form.get("mail").strip().lower()
  if name :
    if len(name) < 40 and len(name) > 2 :
      db.execute("UPDATE users SET name = ? WHERE id = ?", name, session["user_id"])
  if email :
    if email != user["email"] :
      if len(email) > 128 :
        flash("the max length is 128")
        return redirect("/profile")
      check = db.execute("SELECT * FROM users WHERE email = ?", email.strip().lower())
      if check :
        if not check[0]["is_verified"] :
          if ( datetime.now() - datetime.strptime(check[0]["created_at"], "%Y-%m-%d %H:%M:%S") ) > timedelta(minutes=5) :
            db.execute("DELETE FROM users WHERE id = ?", check[0]["id"])
          else :
            flash("try again in a few minutes", category="no")
            return redirect("/profile")
        else :
          flash("this email is already registered", category="no")
          return redirect("/profile")
      
        session["login_state"] = 1
        db.execute("UPDATE users SET is_verified = 0, email = ? WHERE id = ?", email,session["user_id"])
        return redirect("/verification")
  


  if session.get("role") == "manager" :
    manager =  db.execute("SELECT * FROM managers WHERE user_id = ?", session["user_id"])[0]
    comp = request.form.get("comp").strip()
    if comp :
      if comp != manager["company_name"] :
        db.execute("UPDATE managers SET company_name = ? WHERE user_id = ?", comp, session["user_id"])

  return redirect("/profile")

@app.route ("/profile/change-password/", methods=["POST"])
@login_required
@guest_pan
def changePassword() :
  current = request.form.get("currentPassword")
  new = request.form.get("newPassword")
  confirm = request.form.get("confirmPassword")
  user = db.execute("SELECT * FROM users WHERE id = ?", session["user_id"])[0]
  if check_password_hash(user["hash_pass"], current.strip()):
    if not new or not confirm or not new == confirm:
      flash("type password correct and the same in two fildes", category="no")
      return redirect("/profile")
    if len(new) < 8:
      flash("password must be at least 8 characters", category="no")
      return redirect("/profile")
    db.execute("UPDATE users SET hash_pass = ? WHERE id = ?",generate_password_hashn(new), session["user_id"])
  return redirect("/profile")

@app.route ("/profile/change-code/", methods=["GET"])
@login_required
@guest_pan
def changeCode() :
  # code = db.execute("SELECT * FROM providers WHERE user_id = ?", session["user_id"])
  provs = prov = db.execute("SELECT * FROM providers")
  code = ''.join(random.choices(string.ascii_letters + string.digits, k=8))
  for prov in provs :
    if prov["invite_code"] != code :
      continue
    changeCode()
    break
  else :
    db.execute("UPDATE providers SET invite_code = ? WHERE user_id = ?", code, session["user_id"])
  return redirect("/profile")

