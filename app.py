import os
from cs50 import SQL
from flask import Flask, flash, jsonify, redirect, render_template, request, session
from flask_session import Session
import requests
from werkzeug.security import check_password_hash, generate_password_hash

from functions import apology, login_required, guest_ban, send_otp, calculate_change, limitFloat, estimation, clear_user_session
from datetime import datetime, timedelta
import random
import string
import smtplib
from email.message import EmailMessage
import json
import re

# Configure application
app = Flask(__name__)

# Configure session to use filesystem (instead of signed cookies)
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

# Configure CS50 Library to use SQLite database
db = SQL("sqlite:///smartline.db")
app.jinja_env.filters["near"] = limitFloat


@app.after_request
def after_request(response):
  """Ensure responses aren't cached"""
  response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
  response.headers["Expires"] = 0
  response.headers["Pragma"] = "no-cache"
  return response


# * For data needed in every loaded page

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
    if session["role"] == "manager" :
      comp = db.execute("SELECT * FROM managers WHERE user_id = ?", id)
  if len(db.execute("SELECT * FROM providers WHERE user_id = ?", id)) == 1 :
    my_roles.append("prov")
    if session["role"] == "prov" :
      comp = db.execute("SELECT * FROM providers JOIN managers ON providers.manager_id = managers.id WHERE providers.user_id = ?", id)
  if comp :
    return dict(my_roles=my_roles, comp=comp[0]["company_name"])
  return dict(my_roles=my_roles, comp= "" )
@app.route("/")
@login_required
def index():
  return apology("home")


# * For all roles
    # * For register and validation of G-mail 

@app.route("/register", methods=["GET", "POST"])
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
    flash("your are registe successfuly", category="yes")
    return redirect("/verification")
  else:
    clear_user_session()
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
    code_expired = ( datetime.now() - datetime.strptime(session.get("otp_expiry", "2007-09-23 18:30:00"), "%Y-%m-%d %H:%M:%S")) > timedelta(minutes=5);
    if int(code) == int(user["verification_code"]) and not code_expired:
      db.execute("UPDATE users SET is_verified = 1 WHERE id = ?", session["user_id"])
      session["login_state"] = 0
      flash("your are verification successfuly", category="yes")
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


    # * For Guest access and Ban Page

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
    session["country"] = 'egypt'
    session["city"] = 'cairo'
    flash("You are login as Guest and you have 3 services only", category="yes")
    return redirect("/")
  else :
    clear_user_session()
    return render_template("guest.html")


@app.route("/guest_ban", methods=["GET"])
def ban():
  return render_template("guestBan.html")


    # * For Log In and validate the G-mail if doesn't validated and Log Out

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
      flash("Your Log In successfuly please verify your account", category="yes")
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
    clear_user_session()
    return render_template("login.html", email="")


@app.route("/logout")
def logout():

  """Log user out"""

  # Forget any user_id
  session.clear()

  # Redirect user to login form
  return redirect("/")


# * For customer Role

@app.route("/customer/findQueue", methods=["GET"])
@login_required
def findQueue() :
  customer = ""
  if session.get("login_state", -1) == 0 :
    customer = db.execute("SELECT * FROM users WHERE id = ?", session["user_id"])
  if customer :
    session["country"] = customer[0]["country"]
    session["city"] = customer[0]["city"]
  if not session.get("country") or not session.get("city") :
    session["country"] = 'egypt'
    session["city"] = 'cairo'
  
  q = request.args.get('q', '').strip().lower()
  cat = request.args.get('category', 'all').strip().lower()
  country = request.args.get('country', session["country"]).strip().lower()
  city = request.args.get('city', session["city"]).strip().lower()

  # ! Companies For View
  select_part = """
  SELECT DISTINCT
    companies.name AS comp_name,
    companies.category,
    companies.opening_time,
    companies.closing_time,
    companies.address,
    companies.phone,
    companies.description
  """
  if q:
    select_part += ", fts_results.rank"

  sql = select_part + """
  FROM companies_fts
  JOIN companies ON companies.id = companies_fts.company_id
  LEFT JOIN managers ON companies.manager_id = managers.id
  LEFT JOIN providers ON managers.id = providers.manager_id
  LEFT JOIN queues ON queues.provider_id = providers.id
  LEFT JOIN service_logs ON queues.id = service_logs.queue_id
  """
  params = []
  if q:
    sql += """
    JOIN (
      SELECT company_id, bm25(companies_fts) AS rank
      FROM companies_fts
      WHERE companies_fts MATCH ?
    ) AS fts_results ON companies.id = fts_results.company_id
    """
    params.append(f"{q}*")

  sql += """
  WHERE
    LOWER(companies.country) = ? AND
    LOWER(companies.city) = ?
  """
  params.append(country)
  params.append(city)
    
  if cat != 'all' :
    sql += " AND LOWER(companies.category) = ?"
    params.append(cat)

  if q :
    sql += " ORDER BY fts_results.rank"
  else :
    sql += " ORDER BY companies.created_at DESC"


  companies = db.execute(sql, *params)

  for company in companies :
    match company["category"] :
      case 'clinics':
        company["category"] = 'Clinics & Healthcare'
      case 'banks':
        company["category"] = 'Banks & Finance'
      case 'government_offices':
        company["category"] = 'Government Offices'
      case 'telecom':
        company["category"] = 'Telecom & Customer Service'
      case 'edu':
        company["category"] = 'Education'
      case 'other':
        company["category"] = 'Other'

  with open("static/countries.json", "r", encoding="utf-8") as file:
    countries = json.load(file)
  with open("static/EGcities.json", "r", encoding="utf-8") as file:
    cities = json.load(file)
  return render_template("findQueue.html", companies=companies, countries=countries, cities=cities)


@app.route("/customer/myQueue")
@login_required
def myQueueCustomer() :

  return render_template("myQueue.html")
# * For Provider Role

@app.route("/provider/Queue", methods=["GET"])
@login_required
@guest_ban
def providerQueues() :
  # * check if provider and if it's unemployed and load unemployed page
  if session.get("role") != "prov" :
    flash("Your are not provider", category="no")
    return redirect("/")
  prov = db.execute("SELECT * FROM providers WHERE user_id = ?", session["user_id"])
  if not prov :
    flash("Unauthorized access", category="no")
    return redirect("/")
  if not prov[0]["manager_id"] :
    return render_template("unemployedMessage.html", invite=prov[0]["invite_code"])
  manager = db.execute("SELECT * FROM managers WHERE id = ?", prov[0]["manager_id"])
  # * load Queue page and collect and calculate the data needed
  # queues = db.execute("SELECT * FROM queues WHERE provider_id = ?", prov[0]["id"])
  # lastqueue = db.execute("SELECT * FROM service_logs WHERE queue_id = (SELECT id FROM queues WHERE provider_id = ? AND status = 'closed' ORDER BY created_at DESC LIMIT 1) ORDER BY start_time DESC", prov[0]["id"])
  lastqueue = db.execute("SELECT * FROM queues WHERE provider_id = ? AND status = 'closed' ORDER BY created_at DESC LIMIT 1", prov[0]["id"])
  lastAvgMinutes = 0
  if not lastqueue :
    lastlog = []

    # * For every thing in the past about Provider

  else :
    lastlog = db.execute("SELECT * FROM service_logs WHERE queue_id = ? AND end_time IS NOT NULL", lastqueue[0]["id"])
    lastTotal_customers = len(lastlog)
    total_seconds = 0
    for log in lastlog :
      pastAvg = datetime.strptime(log["end_time"], "%Y-%m-%d %H:%M:%S") - datetime.strptime(log["start_time"], "%Y-%m-%d %H:%M:%S")
      total_seconds += pastAvg.total_seconds()
    if lastTotal_customers != 0:
      lastAvgMinutes = total_seconds / 60 / lastTotal_customers
  logs = db.execute("SELECT service_logs.id, stars FROM service_logs JOIN queues ON service_logs.queue_id = queues.id WHERE provider_id = ? AND stars IS NOT NULL", prov[0]["id"])
  reviews = len(logs)
  rate = 0
  for log in logs :
    rate += int(log["stars"])
  if reviews != 0 :
    rate /= reviews

    # * For every thing in the present about Provider

  nowQueue = db.execute("SELECT * FROM queues WHERE provider_id = ? AND (status = 'active' OR (status = 'closed' AND closed_at IS NULL))", prov[0]["id"])
  nowAvgMinutes = 0
  if not nowQueue :
    return render_template("startQueue.html")
  nowlog = db.execute("SELECT * FROM service_logs WHERE queue_id = ? AND end_time IS NOT NULL", nowQueue[0]["id"])
  nowTotal_customers = len(nowlog)
  total_seconds = 0
  for log in nowlog :
    if log["end_time"] is not None :
      nowAvg = datetime.strptime(log["end_time"], "%Y-%m-%d %H:%M:%S") - datetime.strptime(log["start_time"], "%Y-%m-%d %H:%M:%S")
      total_seconds += nowAvg.total_seconds()
  if nowTotal_customers != 0 :
    nowAvgMinutes = total_seconds / 60 / nowTotal_customers

    # * Now serving

  serving = db.execute("SELECT * FROM queue_entries WHERE status = 'serving' AND queue_id = ?", nowQueue[0]["id"])
  if serving:
    serviceData = db.execute("SELECT * FROM service_logs WHERE queue_entry_id = ? AND end_time IS NULL", serving[0]["id"])
    if serviceData :
      started = ( datetime.now() - datetime.strptime(serviceData[0]["start_time"], "%Y-%m-%d %H:%M:%S") ).total_seconds() / 60
    else :
      # inseart data
      if serving[0]["user_id"] :
        db.execute("INSERT INTO service_logs (queue_id, user_id, queue_entry_id, user_name, company_name, start_time) VALUES (?, ?, ?, ?, ?, ?)",
                    nowQueue[0]["id"], serving[0]["user_id"], serving[0]["id"], serving[0]["user_name"],manager[0]["company_name"] , datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
      else :
        db.execute("INSERT INTO service_logs (queue_id, queue_entry_id, user_name, company_name, start_time) VALUES (?, ?, ?, ?, ?)",
                    nowQueue[0]["id"], serving[0]["id"], serving[0]["user_name"],manager[0]["company_name"] ,datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
      started = 0

    dt_object = datetime.strptime(serving[0]["joined_at"], "%Y-%m-%d %H:%M:%S")
    joined = dt_object.strftime("%-I:%M %p")
  else :
    started = 0
    joined = datetime.now().strftime("%-I:%M %p")

    # * In waiting and serving estimated time
  prov_est = db.execute("SELECT * FROM service_logs WHERE end_time IS NOT NULL AND queue_id IN (SELECT id FROM queues WHERE provider_id = ?) ORDER BY start_time DESC LIMIT 100", prov[0]["id"])
  customer_est = []
  if serving :
    if serving[0]["user_id"] :
        customer_est = db.execute("SELECT * FROM service_logs WHERE end_time IS NOT NULL AND user_id = ? ORDER BY start_time DESC LIMIT 5", serving[0]["user_id"])
      
  serving_est = estimation(prov_est, customer_est)

  nowWaiting = db.execute("SELECT * FROM queue_entries WHERE status = 'waiting' AND queue_id = ?", nowQueue[0]["id"])
  waiting = []
  total_est_time = (serving_est - started) if serving_est - started > 0 else 0
  for customer in nowWaiting :
    name = customer["user_name"]
    user_type = "Registered" if customer["user_id"] else "Guest"
    dt_object = datetime.strptime(customer["joined_at"], "%Y-%m-%d %H:%M:%S")
    joined_ago = (datetime.now() - dt_object).total_seconds() / 60
    joined_time = dt_object.strftime("%-I:%M %p")

      # * to get the estimated time by get the average of services in the past for provider and customer
    if user_type == "Registered" :
      customer_est = db.execute("SELECT * FROM service_logs WHERE end_time IS NOT NULL AND user_id = ? ORDER BY start_time DESC LIMIT 5", customer["user_id"])
    else :
      customer_est = []
    # * to calc the waiting time and save the estimation time of customer above
    waiting.append({
      "name" : name,
      "type" : user_type,
      "ago" : joined_ago,
      "time" : joined_time,
      "est" : total_est_time
    })
    total_est_time += estimation(prov_est, customer_est)

  return render_template("providerQueue.html",
                          servedToDay=len(nowlog),
                          servedCompare=calculate_change(len(nowlog), len(lastlog)),
                          avg=nowAvgMinutes, avgCompare=calculate_change(nowAvgMinutes, lastAvgMinutes),
                          rate=rate,
                          reviews=reviews,
                          serving=serving,
                          started=started,
                          joined=joined,
                          numWaiting=len(nowWaiting),
                          waiting=waiting,
                          serving_est=serving_est
                          )


@app.route("/provider/Queue/start", methods=["GET"])
@login_required
@guest_ban
def start_queue() :
  if session.get("role") != "prov" :
    flash("Your are not provider", category="no")
    return redirect("/")
  prov = db.execute("SELECT * FROM providers WHERE user_id = ?", session["user_id"])
  if not prov :
    flash("Unauthorized access", category="no")
    return redirect("/")
  
  nowQueue = db.execute("SELECT * FROM queues WHERE provider_id = ? AND (status = 'active' OR (status = 'closed' AND closed_at IS NULL))", prov[0]["id"])  
  if nowQueue:
    flash("Close your current queue first", category="no")
    return redirect("/provider/Queue")

  db.execute("INSERT INTO queues (provider_id, status) VALUES(?, 'active')", prov[0]["id"])
  flash("Queue started successfully", category="yes")
  return redirect("/provider/Queue")


@app.route("/provider/Queue/callNext")
@login_required
@guest_ban
def call_next():
    if session.get("role") != "prov":
        return redirect("/")
        
    prov = db.execute("SELECT * FROM providers WHERE user_id = ?", session["user_id"])
    nowQueue = db.execute("SELECT * FROM queues WHERE provider_id = ? AND (status = 'active' OR (status = 'closed' AND closed_at IS NULL))", prov[0]["id"])
    
    if not nowQueue:
        flash("you doesn't start any queue", category="no")
        return redirect("/provider/Queue")

    serving = db.execute("SELECT * FROM queue_entries WHERE status = 'serving' AND queue_id = ?", nowQueue[0]["id"])
    if serving:
        flash("You must end the current service first", category="no")
        return redirect("/provider/Queue")

    next_customer = db.execute("SELECT * FROM queue_entries WHERE status = 'waiting' AND queue_id = ? ORDER BY joined_at ASC, id ASC LIMIT 1", nowQueue[0]["id"])
    
    if next_customer:
        customer = next_customer[0]
        manager = db.execute("SELECT * FROM managers WHERE id = ?", prov[0]["manager_id"])
        
        db.execute("UPDATE queue_entries SET status = 'serving' WHERE id = ?", customer["id"])
        log = db.execute("SELECT * FROM service_logs WHERE user_id = ? AND end_time IS NULL", customer["user_id"])
        if not log :
          if customer["user_id"]:
              db.execute("INSERT INTO service_logs (queue_id, user_id, queue_entry_id, user_name, company_name, start_time) VALUES (?, ?, ?, ?, ?, ?)",
                    nowQueue[0]["id"], customer["user_id"], customer["id"], customer["user_name"],manager[0]["company_name"] , datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
          else:
              db.execute("INSERT INTO service_logs (queue_id, queue_entry_id, user_name, company_name, start_time) VALUES (?, ?, ?, ?, ?)",
                    nowQueue[0]["id"], customer["id"], customer["user_name"],manager[0]["company_name"] ,datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
    else:
        flash("No customers waiting", category="no")
        
    return redirect("/provider/Queue")


@app.route("/provider/Queue/skip")
@login_required
@guest_ban
def skip_service():
    if session.get("role") != "prov":
        return redirect("/")
        
    prov = db.execute("SELECT * FROM providers WHERE user_id = ?", session["user_id"])
    nowQueue = db.execute("SELECT * FROM queues WHERE provider_id = ? AND (status = 'active' OR (status = 'closed' AND closed_at IS NULL))", prov[0]["id"])
    
    if not nowQueue:
        return redirect("/provider/Queue")

    serving = db.execute("SELECT * FROM queue_entries WHERE status = 'serving' AND queue_id = ?", nowQueue[0]["id"])
    
    if serving:
        # نجيب بيانات الخدمة الحالية عشان نعرف هو اتنادى إمتى
        service_record = db.execute("SELECT * FROM service_logs WHERE queue_entry_id = ? AND end_time IS NULL", serving[0]["id"])
        
        if service_record:
            start_time = datetime.strptime(service_record[0]["start_time"], "%Y-%m-%d %H:%M:%S")
            time_passed = (datetime.now() - start_time).total_seconds() / 60
            
            # شرط الدقيقتين
            if time_passed < 2:
                flash(f"You must wait 2 minutes. Only {int(time_passed)} minute(s) passed.", category="no")
                return redirect("/provider/Queue")
            
            # لو عدى دقيقتين، نمسح السجل من logs عشان وقته ميتحسبش
            db.execute("DELETE FROM service_logs WHERE id = ?", service_record[0]["id"])
            
        # ننهي التذكرة بتاعته
        db.execute("UPDATE queue_entries SET status = 'done' WHERE id = ?", serving[0]["id"])
        flash("Customer skipped.", category="yes")
        
        remaining = db.execute("SELECT * FROM queue_entries WHERE queue_id = ? AND status = ('waiting', 'serving')", nowQueue[0]["id"])
        if nowQueue[0]["status"] == "closed" and len(remaining) == 0 :
          now_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
          db.execute("UPDATE queues SET closed_at = ? WHERE id = ?", now_time, nowQueue[0]["id"])
          flash("All customers served! Shift has ended completely.", category="yes")
        
    return redirect("/provider/Queue")


@app.route("/provider/Queue/endservice")
@login_required
@guest_ban
def end_service():
  if session.get("role") != "prov":
    return redirect("/")
  prov = db.execute("SELECT * FROM providers WHERE user_id = ?", session["user_id"])
  if not prov:
    return redirect("/")
  
  nowQueue = db.execute("SELECT * FROM queues WHERE provider_id = ? AND (status = 'active' OR (status = 'closed' AND closed_at IS NULL))", prov[0]["id"])
  if not nowQueue:
    return redirect("/provider/Queue")
  
  serving = db.execute("SELECT * FROM queue_entries WHERE status = 'serving' AND queue_id = ?", nowQueue[0]["id"])
  if serving:
    db.execute("UPDATE service_logs SET end_time = ? WHERE queue_entry_id = ? AND end_time IS NULL",
              datetime.now().strftime("%Y-%m-%d %H:%M:%S"), serving[0]["id"])
    db.execute("UPDATE queue_entries SET status = 'done' WHERE id = ?", serving[0]["id"])
  
  remaining = db.execute("SELECT * FROM queue_entries WHERE queue_id = ? AND status IN ('waiting', 'serving')", nowQueue[0]["id"])
  if nowQueue[0]["status"] == "closed" and len(remaining) == 0 :
    now_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    db.execute("UPDATE queues SET closed_at = ? WHERE id = ?", now_time, nowQueue[0]["id"])
    flash("All customers served! Shift has ended.", category="yes")

  return redirect("/provider/Queue")


@app.route("/provider/Queue/endshift")
@login_required
@guest_ban
def end_shift():
    if session.get("role") != "prov":
        return redirect("/")
        
    prov = db.execute("SELECT * FROM providers WHERE user_id = ?", session["user_id"])
    if not prov:
        return redirect("/")
        
    nowQueue = db.execute("SELECT * FROM queues WHERE provider_id = ? AND (status = 'active' OR (status = 'closed' AND closed_at IS NULL))", prov[0]["id"])
    if not nowQueue:
        flash("No active queue found.", category="no")
        return redirect("/provider/Queue")
    if nowQueue[0]["status"] == "closed" :
      flash("You are already End your shift.Finish remaining customers.", category="no")
      return redirect("/provider/Queue")
    
    queue_id = nowQueue[0]["id"]
    remaining = db.execute("SELECT * FROM queue_entries WHERE queue_id = ? AND status IN ('waiting', 'serving')", nowQueue[0]["id"])
    if len(remaining) == 0 :
      now_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
      db.execute("UPDATE queues SET status = 'closed', closed_at = ? WHERE id = ?", now_time, nowQueue[0]["id"])
      flash("Shift has ended.", category="yes")
    else :
      db.execute("UPDATE queues SET status = 'closed' WHERE id = ?", nowQueue[0]["id"])
      flash("Queue is now closed for new customers. Finish remaining customers.", category="yes")
    return redirect("/provider/Queue")


# * For Manager Role

@app.route("/manager/providers", methods=["GET", "POST"])
@login_required
@guest_ban
def managerProviders() :
  if session.get("role") != "manager" :
    flash("Your are not manager", category="no")
    return redirect("/")

  manager = db.execute("SELECT * FROM managers WHERE user_id = ?", session["user_id"])
  if not manager :
    flash("Unauthorized access", category="no")
    return redirect("/")

  if request.method == "POST" :
    code = request.form.get("invite", "").strip()
    if not code:
      flash("enter an invite code", category="no")
      return redirect("/manager/providers")

    provider = db.execute("SELECT * FROM providers WHERE invite_code = ?", code)
    if not provider:
      flash("invalid invite code", category="no")
      return redirect("/manager/providers")

    provider = provider[0]
    if provider["manager_id"] is not None:
      if provider["manager_id"] == manager[0]["id"] :
        flash("this provider already belongs to your company", category="no")
        return redirect("/manager/providers")
      else :
        flash("this provider already belongs to a company", category="no")
        return redirect("/manager/providers")

    db.execute("UPDATE providers SET manager_id = ? WHERE id = ?", manager[0]["id"], provider["id"])

    flash("provider added successfully", category="yes")
    return redirect("/manager/providers")

  else :
    providers = db.execute("SELECT providers.id AS id, users.name, users.email, queues.status  FROM providers JOIN users ON providers.user_id = users.id LEFT JOIN queues ON queues.provider_id = providers.id AND queues.status = 'active' WHERE manager_id = ? GROUP BY providers.id", manager[0]["id"])
    return render_template("managerProviders.html", providers=providers)


@app.route("/manager/providers/revoke/<prov_id>", methods=["GET"])
@login_required
@guest_ban
def revoke(prov_id) :

  manager = db.execute("SELECT * FROM managers WHERE user_id = ?", session["user_id"])
  if not manager:
    flash("Unauthorized access", category="no")
    return redirect("/")
  queues = db.execute("SELECT * FROM queues WHERE provider_id = ? AND (status = 'active' OR (status = 'closed' AND closed_at IS NULL))", prov_id)
  prov = db.execute("SELECT * FROM providers JOIN users ON providers.user_id = users.id WHERE providers.id = ? AND providers.manager_id = ?", prov_id, manager[0]["id"])
  if prov :
    if queues :
      flash("The provider is in an active queue. Close the queue first.", category="no")
      return redirect("/manager/providers")
    else :
      db.execute("UPDATE providers SET manager_id = NULL WHERE id = ?", prov_id)
  else :
    flash("Provider not found or does not belong to your company.", category="no")
    return redirect("/manager/providers")
  
  flash("Provider " + prov[0]["name"] +" revoked successfully." , category="yes")
  return redirect("/manager/providers")


@app.route ("/manager/profile/update-info/", methods=["POST"])
@login_required
@guest_ban
def updateInfoManager() :
  if session["role"] != "manager" :
    flash("Unauthorized access", category="no")
    return redirect("/")
  manager = db.execute("SELECT * FROM managers WHERE user_id = ?", session["user_id"])
  if not manager:
    flash("Unauthorized access", category="no")
    return redirect("/")
  
  user = db.execute("SELECT * FROM users WHERE id = ?", session["user_id"])
  with open("static/countries.json", "r", encoding="utf-8") as file:
    countries = json.load(file)
  with open("static/EGcities.json", "r", encoding="utf-8") as file:
    cities = json.load(file)
  end = render_template("profile.html", mail=user[0]["email"], managerdetails=managerdetails, countries=countries, cities=cities)
  
  manager = db.execute("SELECT * FROM managers WHERE user_id = ?", session["user_id"])
  details = db.execute("SELECT * FROM companies WHERE manager_id = ?", manager[0]["id"])
  inDb = 0
  if details :
        inDb = 1
        company = details[0]
        managerdetails = {
          'name' : company['name'],
          'cat' : company['category'],
          'country' : company['country'],
          'city' : company['city'],
          'opening' : company['opening_time'],
          'closing' : company['closing_time'],
          'address' : company['address'],
          'phone' : company['phone'],
          'description' : company['description'],
        }
  else :
    managerdetails = {}

  name = request.form.get('company_name', "").strip().lower()
  if not name or len(name) > 100 or len(name) < 2:
    flash("Company name must be between 2 and 100 characters.", category="no")
    return end
  
  managerdetails["name"] = name

  cat = request.form.get('category', "").strip().lower()
  opts = ["clinics", "banks", "government_offices", "telecom", "edu", "other"]
  if cat not in opts:
    flash("Please select a valid category.", category="no")
    return end
  
  managerdetails["cat"] = cat

  country = request.form.get('country', "").strip().lower()
  found = ""
  with open("static/countries.json", "r", encoding="utf-8") as file:
    countries = json.load(file)
  for dec in countries :
    if dec["name"].strip().lower() == country :
      found = country
      break
  if not found :
    flash("Please select a valid country.", category="no")
    return end
  
  managerdetails["country"] = country

  city = request.form.get('city', "").strip().lower()
  with open("static/EGcities.json", "r", encoding="utf-8") as file:
    cities = json.load(file)
  if city not in  cities:
    flash("Please select a valid city.", category="no")
    return end
  
  managerdetails["city"] = city

  opening_time = request.form.get('opening_time', "").strip()
  opening = None
  try:
    opening = datetime.strptime(opening_time, "%H:%M").time()
  except ValueError:
    flash("Please enter a valid opening time format (HH:MM).", category="no")
    return end

  closing_time = request.form.get('closing_time', "").strip()
  closing = None
  try:
    closing = datetime.strptime(closing_time, "%H:%M").time()
  except ValueError:
    flash("Please enter a valid closing time format (HH:MM).", category="no")
    return end
  
  if not opening or not closing :
    flash("Please enter opening and closing time", category="no")
    return end

  managerdetails["opening"] = opening_time
  managerdetails["closing"] = closing_time

  address = request.form.get('address', "").strip()
  if address :
    if len(address) > 200 or len(address) < 5:
      flash("address must be between 5 and 200 characters.", category="no")
      return end
  
  managerdetails["address"] = address

  phone = request.form.get('phone', "").strip()
  phone_pattern = r"^[0-9+\-\s()]{5,20}$"
  if not re.match(phone_pattern, phone):
      flash("Invalid phone number.", category="no")
      return end
  elif not re.search(r"\d", phone) :
    flash("Phone number must contain digits.", category="no")
    return end
  
  managerdetails["phone"] = phone

  description = request.form.get('description', "").strip()
  if description :
    if len(description) > 150 or len(description) < 10 :
      flash("description must be between 10 and 150 characters.", category="no")
      return end
  
  managerdetails["description"] = description
  if inDb :
    db.execute("""
              UPDATE companies SET 
                  name = ?, category = ?, country = ?, city = ?, 
                  opening_time = ?, closing_time = ?, address = ?, phone = ?, description = ?
              WHERE manager_id = ?
          """, 
              managerdetails['name'], managerdetails['cat'], managerdetails['country'], managerdetails['city'],
              managerdetails['opening'], managerdetails['closing'], managerdetails['address'], managerdetails['phone'], managerdetails['description'],
              manager[0]["id"]
          )
  else :
    db.execute("""
              INSERT INTO companies (
                  manager_id, name, category, country, city, 
                  opening_time, closing_time, address, phone, description
              ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
          """, 
              manager["id"][0], managerdetails['name'], managerdetails['cat'], managerdetails['country'], managerdetails['city'],
              managerdetails['opening'], managerdetails['closing'], managerdetails['address'], managerdetails['phone'], managerdetails['description']
          )
  return redirect("/profile")


# * For all Roles after Sign In
    # * Switching roles between accessed roles.
    # * All Roles is (Customer, Provider, Manager) and Guest access

@app.route("/switch-role/<role>")
@login_required
@guest_ban
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


    # * For load Profile page

@app.route ("/profile")
@login_required
@guest_ban
def profile() :
    user = db.execute("SELECT * FROM users WHERE id = ?", session["user_id"])
    comp = ""
    code = ""
    totalProv = ""
    managerdetails = ""

    if session.get("role") == "prov" :
      prov = db.execute("SELECT * FROM providers LEFT JOIN managers ON managers.id = providers.manager_id WHERE providers.user_id = ?", session["user_id"])
      comp = prov[0]["company_name"]
      code = prov[0]["invite_code"]
      if not comp :
        comp = ""
    elif session.get("role") == "manager" :
      manager = db.execute("SELECT * FROM managers WHERE user_id = ?", session["user_id"])
      details = db.execute("SELECT * FROM companies WHERE manager_id = ?", manager[0]["id"])
      with open("static/countries.json", "r", encoding="utf-8") as file:
        countries = json.load(file)
      with open("static/EGcities.json", "r", encoding="utf-8") as file:
        cities = json.load(file)
      if details :
        company = details[0]
        managerdetails = {
          'name' : company['name'],
          'cat' : company['category'],
          'country' : company['country'],
          'city' : company['city'],
          'opening' : company['opening_time'],
          'closing' : company['closing_time'],
          'address' : company['address'],
          'phone' : company['phone'],
          'description' : company['description'],
        }
    return render_template("profile.html", mail=user[0]["email"],comp=comp, totalProv=totalProv, code=code, managerdetails=managerdetails, countries=countries, cities=cities)


    # * For change your information or company info (Manager) or get your Invite Code (provider)


@app.route ("/profile/update-info/", methods=["POST"])
@login_required
@guest_ban
def updateInfoProfile() :
  user = db.execute("SELECT * FROM users WHERE id = ?", session["user_id"])[0]
  name = request.form.get("name")
  email = request.form.get("mail")
  if name :
    if len(name) < 40 and len(name) > 2 :
      db.execute("UPDATE users SET name = ? WHERE id = ?", name, session["user_id"])
      session["name"] = name

  # if session.get("role") == "manager" :
  #   manager =  db.execute("SELECT * FROM managers WHERE user_id = ?", session["user_id"])[0]
  #   comp = request.form.get("comp")
  #   if comp :
  #     if comp.strip() != manager["company_name"] :
  #       db.execute("UPDATE managers SET company_name = ? WHERE user_id = ?", comp.strip(), session["user_id"])

  if email :
    if email.strip().lower() != user["email"] :
      if len(email.strip().lower()) > 128 :
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
        db.execute("UPDATE users SET is_verified = 0, email = ? WHERE id = ?", email, session["user_id"])
        return redirect("/verification")

  return redirect("/profile")


@app.route("/api/get-cities")
@login_required
def get_cities():
    country = request.args.get("country", "").lower()
    api_url = f"https://countriesnow.space/api/v0.1/countries/cities"
    payload = {"country" : country}
    try :
      data = requests.post(api_url, json=payload, timeout=5)
      if data.status_code == 200 :
        response_data = data.json()
        cities = response_data.get("data", "")
        return jsonify(cities), 200
      else :
        return jsonify({'error' : 'Failed ro fetch from exrernal API'}), 500
    except requests.exceptions.Timeout :
      return jsonify({'error' : "External API timed out"}), 500
    except Exception as e :
      return jsonify({'error' : str(e)}), 500

@app.route("/changeLocation")
@login_required
def changeLocation() :
  location = request.args.get("location")
  country = request.args.get("selectedCountryName")
  city = request.args.get("selectedCity")

  session["country"] = country
  session["city"] = city
  if session.get("login_state", -1) == 0 :
    db.execute("UPDATE users SET country = ?, city = ? WHERE id = ?", country, city,session["user_id"])

  if  location.endswith("?") :
    add_country_city = f"country={country}&city={city}"
  elif "?" in location:
    add_country_city = f"&country={country}&city={city}"
  else :
    add_country_city = f"?country={country}&city={city}"
  return redirect(location + add_country_city)
# * Change Password

@app.route ("/profile/change-password/", methods=["POST"])
@login_required
@guest_ban
def changePassword() :
  current = request.form.get("currentPassword")
  new = request.form.get("newPassword")
  confirm = request.form.get("confirmPassword")
  user = db.execute("SELECT * FROM users WHERE id = ?", session["user_id"])[0]
  if not current or not new or not confirm :
    flash("fill all fildes please", category="no")
    return redirect("/profile")
  if check_password_hash(user["hash_pass"], current.strip()):
    if not new or not confirm or not new == confirm:
      flash("type password correct and the same in two fildes", category="no")
      return redirect("/profile")
    if len(new) < 8:
      flash("password must be at least 8 characters", category="no")
      return redirect("/profile")
    flash("Your are change password successfuly", category="yes")
    db.execute("UPDATE users SET hash_pass = ? WHERE id = ?",generate_password_hash(new), session["user_id"])
  else :
    flash("current password is wrong", category="no")
    return redirect("/profile")
  return redirect("/profile")


# * upgrade account to be manager or provider 

@app.route ("/profile/upgrade/manager", methods=["POST"])
@login_required
@guest_ban
def becomeManager() :
  comp = request.form.get("company_name", "").strip()
  if not comp or len(comp) < 3 or len(comp) > 50:
    flash("Company name must be between 3 and 50 characters", category="no")
    return redirect("/profile")

  check = db.execute("SELECT id FROM managers WHERE user_id = ?", session["user_id"])
  if check:
    flash("You are already registered as a manager", category="no")
    return redirect("/profile")

  db.execute("INSERT INTO managers (user_id, company_name) VALUES (?, ?)", session["user_id"], comp)
  session["role"] = "manager"
  flash("Congratulations! You are now a manager.", category="yes")
  return redirect("/manager/providers")

@app.route ("/profile/upgrade/provider", methods=["POST"])
@login_required
@guest_ban
def becomeProvider() :
  check = db.execute("SELECT id FROM providers WHERE user_id = ?", session["user_id"])
  if check:
    flash("You are already registered as a provider", category="no")
    return redirect("/profile")

  while True:
    code = ''.join(random.choices(string.ascii_letters + string.digits, k=8))
    if not db.execute("SELECT id FROM providers WHERE invite_code = ?", code):
      break

  db.execute("INSERT INTO providers (user_id, invite_code) VALUES (?, ?)", session["user_id"], code)
  session["role"] = "prov"
  flash("Provider account created! Share your code with your manager.", category="yes")
  return redirect("/provider/Queue")


# * Change invite code for (providers)

@app.route ("/profile/change-code/", methods=["GET"])
@login_required
@guest_ban
def changeCode() :
  while(True) :
    code = ''.join(random.choices(string.ascii_letters + string.digits, k=8))
    prov = db.execute("SELECT * FROM providers WHERE invite_code = ?", code)
    if not prov :
      break
  db.execute("UPDATE providers SET invite_code = ? WHERE user_id = ?", code, session["user_id"])
  return redirect("/profile")
