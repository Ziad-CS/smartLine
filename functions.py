# import requests
from flask import Flask ,redirect, render_template, session, flash
from functools import wraps
from cs50 import SQL
import random
from datetime import datetime

import smtplib
from email.message import EmailMessage
from dotenv import load_dotenv
import os

load_dotenv("email.env")

db = SQL("sqlite:///smartline.db")

def login_required(f):
  @wraps(f)
  def decorated_function(*args, **kwargs):
    if session.get("login_state") == 2 :
      if session.get("serv_count", 0) > 3 :
        return redirect("/guest_ban")
    if session.get("login_state") == 2 :
      return f(*args, **kwargs)
    elif ( "user_id" not in session or session.get("login_state", -1) == 1) :
    # or (session.get("login_state") == 2 and session.get("serv_count") >= 3):
      return redirect("/login")
    user = db.execute("SELECT * FROM users WHERE id = ?", session.get("user_id"))
    if not user or not user[0]["is_verified"] :
      return redirect("/login")

    return f(*args, **kwargs)

  return decorated_function

def guest_ban(f):
  @wraps(f)
  def decorated_function(*args, **kwargs):
    if session.get("login_state") == 2 :
      return redirect("/guest_ban")
    
    return f(*args, **kwargs)

  return decorated_function

def clear_user_session():
    # * Clear all application-specific session keys without wiping flash messages
    keys_to_clear = [
        "user_id",
        "login_state",
        "name",
        "role",
        "country",
        "city",
        "serv_count",
        "otp_expiry"
    ]
    for key in keys_to_clear:
        session.pop(key, None)
        
def apology(message, code=400):
  """Render message as an apology to user."""

  def escape(s):
    """
    Escape special characters.

    https://github.com/jacebrowning/memegen#special-characters
    """
    for old, new in [
      ("-", "--"),
      (" ", "-"),
      ("_", "__"),
      ("?", "~q"),
      ("%", "~p"),
      ("#", "~h"),
      ("/", "~s"),
      ('"', "''"),
    ]:
      s = s.replace(old, new)
    return s

  return render_template("apology.html", top=code, bottom=escape(message)), code

def send_otp(id) :
  user = db.execute("SELECT * FROM users WHERE id = ?", id)[0]
  email_html =render_template("otp.html",name=user["name"] ,code=user["verification_code"])

  msg = EmailMessage()
  msg["Subject"] = "Verify your SmartLine account"
  msg["From"] = "smartline.authentication@gmail.com"
  msg["To"] = user["email"]
  msg.set_content(f"Your verification code is {user['verification_code']}. \n"
  "This code will expire in 5 minutes.")
  msg.add_alternative(email_html, subtype="html")

  with smtplib.SMTP("smtp.gmail.com", 587) as server :
    server.starttls()
    server.login("smartline.authentication@gmail.com", os.environ.get("GMAIL_PASSWORD"))
    server.send_message(msg)

def calculate_change(new_value, base_value):
  if base_value <= 0 :
    calc = 0
  else :
    calc = ((new_value / base_value) * 100) - 100
  return calc

def limitFloat( floatNum ):
  return f"{floatNum: ,.1f}"

def estimation(prov_est, customer_est = None) :
  total_prov_time = 0
  if prov_est :
    for est in prov_est :
      start_time = datetime.strptime(est["start_time"], "%Y-%m-%d %H:%M:%S")
      end_time = datetime.strptime(est["end_time"], "%Y-%m-%d %H:%M:%S")
      total_prov_time += (end_time - start_time).total_seconds() / 60
    avg_prov_time = total_prov_time / len(prov_est)
  
    if customer_est :
      total_customer_time = 0
      
      for est in customer_est :
        start_time = datetime.strptime(est["start_time"], "%Y-%m-%d %H:%M:%S")
        end_time = datetime.strptime(est["end_time"], "%Y-%m-%d %H:%M:%S")
        total_customer_time += (end_time - start_time).total_seconds() / 60
      avg_customer_time = total_customer_time / len(customer_est)

      total_est_time = avg_prov_time * 0.7 + avg_customer_time * 0.3
    else :
      total_est_time = avg_prov_time
  else :
    total_est_time = 0
  return total_est_time

