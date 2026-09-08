import os
from cs50 import SQL
from flask import Flask, flash, redirect, render_template, request, session
from flask_session import Session
from werkzeug.security import check_password_hash, generate_password_hash

from functions import apology, login_required, guest_pan, send_otp
from datetime import datetime, timedelta
import random

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

    if not name:
      return apology("entry name pls")

    if email:
      check = db.execute("SELECT * FROM users WHERE email = ?", email.strip().lower())
      if check :
        if not check[0]["is_verified"] :
          if ( datetime.now() - datetime.strptime(check[0]["created_at"], "%Y-%m-%d %H:%M:%S") ) > timedelta(minutes=5) :
            db.execute("DELETE FROM users WHERE id = ?", check[0]["id"])
          else :
            return apology("try again in a few minutes")
        else :
          return apology("this email is already registered")
    else:
      return apology("entry email pls")

    if not password or not confirmation or not password == confirmation:
      return apology("type password correct and the same in two fildes")
    if len(password) < 8:
      return apology("password must be at least 8 characters")

    code = str(random.randint(100000, 999999))

    db.execute("INSERT INTO users (name, email, hash_pass, verification_code) VALUES (?, ?, ?, ?)"
               ,name , email.strip().lower(), generate_password_hash(password), code)
    session["user_id"] = db.execute("SELECT id FROM users WHERE email = ?", email.strip().lower())[0]["id"]
    session["login_state"] = 1
    send_otp(session["user_id"])
    return redirect("/verification")
  else:
    return render_template("register.html")


@app.route("/verification", methods=["GET","POST"])
def verification():
  if "user_id" not in session :
      return redirect("/login")
  if request.method == "POST" :
    code = request.form.get("code")
    user = db.execute("SELECT * FROM users WHERE id = ?", session["user_id"])[0]

    if not code or not code.isdigit():
      return apology("enter code pls")
    if int(code) == int(user["verification_code"]) :
      db.execute("UPDATE users SET is_verified = 1 WHERE id = ?", session["user_id"])
      session["login_state"] = 0
      return redirect("/")
    else :
      return apology("pls enter correct code")
  
  else :
    check = db.execute("SELECT * FROM users WHERE id = ?", session["user_id"])
    if ( datetime.now() - datetime.strptime(check[0]["created_at"], "%Y-%m-%d %H:%M:%S") ) > timedelta(minutes=5) :
      code = str(random.randint(100000, 999999))
      db.execute("UPDATE users SET verification_code = ? WHERE id = ?", code,session["user_id"])
      send_otp(check[0]["id"])
      db.execute("UPDATE users SET created_at = ? WHERE id = ?", datetime.now().strftime("%Y-%m-%d %H:%M:%S"), session["user_id"])

      
    # email_html =render_template("otp.html",name=check[0]["name"] ,code=check[0]["verification_code"])

    # msg = EmailMessage()
    # msg["Subject"] = "Verify your SmartLine account"
    # msg["From"] = "smartline.authentication@gmail.com"
    # msg["To"] = check[0]["email"]
    # msg.set_content(f"Your verification code is {check[0]['verification_code']}. \n"
    # "This code will expire in 5 minutes.")
    # msg.add_alternative(email_html, subtype="html")

    # with smtplib.SMTP("smtp.gmail.com", 587) as server :
    #   server.starttls()
    #   server.login("smartline.authentication@gmail.com", "rufbykvqhlswvoqq")
    #   server.send_message(msg)

    return render_template("verification.html", email=check[0]["email"])
    # , code=check[0]["verification_code"]


@app.route("/guest", methods=["GET", "POST"])
def access():
  if request.method == "POST" :
    name = request.form.get("name")
    if not name :
      return apology("enter your name pls")
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
  session.clear()

  # User reached route via POST (as by submitting a form via POST)
  if request.method == "POST":
    # Ensure username was submitted
    if not request.form.get("email"):
      return apology("must provide email", 403)

    # Ensure password was submitted
    elif not request.form.get("password"):
      return apology("must provide password", 403)

    # Query database for username
    user = db.execute("SELECT * FROM users WHERE email = ?", request.form.get("email", "").strip().lower())

    # Ensure username exists and password is correct
    if len(user) != 1 or not check_password_hash(
      user[0]["hash_pass"], request.form.get("password", "").strip()
    ):
      return apology("invalid email and/or password", 403)

    if not user[0]["is_verified"]:
      session["user_id"] = user[0]["id"]
      session["login_state"] = 1
      return redirect("/verification")
    # Remember which user has logged in
    session["user_id"] = user[0]["id"]

    # Redirect user to home page
    return redirect("/")

  # User reached route via GET (as by clicking a link or via redirect)
  else:
    return render_template("login.html")


@app.route("/logout")
def logout():
  """Log user out"""

  # Forget any user_id
  session.clear()

  # Redirect user to login form
  return redirect("/")
