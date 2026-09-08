# import requests
from flask import redirect, render_template, session
from functools import wraps
from cs50 import SQL
import random

import smtplib
from email.message import EmailMessage

db = SQL("sqlite:///smartline.db")

def login_required(f):
    """
    Decorate routes to require login.

    https://flask.palletsprojects.com/en/latest/patterns/viewdecorators/
    """

    @wraps(f)
    def decorated_function(*args, **kwargs):
      if ( "user_id" not in session or session.get("login_state", -1) == 1) :
      # or (session.get("login_state") == 2 and session.get("serv_count") >= 3):
        return redirect("/login")

      return f(*args, **kwargs)

    return decorated_function

def guest_pan(f):
  @wraps(f)
  def decorated_function(*args, **kwargs):
    if session.get("login_state") == 2:
      return redirect("/guest_pan")
    
    return f(*args, **kwargs)

  return decorated_function

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
    server.login("smartline.authentication@gmail.com", "rufbykvqhlswvoqq")
    server.send_message(msg)