# import requests
from flask import Flask ,redirect, request, jsonify, render_template, session, flash
from functools import wraps
from cs50 import SQL
import sqlite3
import random
import time
from datetime import datetime, timedelta
import requests
import json

import smtplib
from email.message import EmailMessage
from dotenv import load_dotenv
import os

load_dotenv("email.env")

import os
import sqlite3

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

def init_db(db_name="smartline.db"):
  return
  db_file = os.path.join(BASE_DIR, db_name)
  try:
    conn = sqlite3.connect(db_file)
  except Exception:
    return
  try:
    for sql_filename in ("schema.sql", "seed.sql"):
      sql_file = os.path.join(BASE_DIR, sql_filename)
      if os.path.exists(sql_file):
        with open(sql_file, "r", encoding="utf-8") as f:
          script = f.read()
        if script.strip():
          conn.executescript(script)
      conn.commit()
  except Exception:
    conn.close()
    if os.path.exists(db_file):
      os.remove(db_file)
    raise
  finally:
    conn.close()


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


def get_client_ip() :
  ip = request.headers.get('X-Forwarded-For')
  if ip :
    return ip.split(',')[0].strip()
  return request.remote_addr


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
        
FROZEN_START = datetime(2026, 10, 24, 9, 20, 0)
_BOOT = time.monotonic()

def cairo_now():
  # Same convention as the seed: UTC+3
  elapsed = time.monotonic() - _BOOT
  return (FROZEN_START + timedelta(seconds=elapsed)).replace(microsecond=0)
  return datetime.strptime("2026-10-24 9:20:00", "%Y-%m-%d %H:%M:%S")
  return datetime.now() + timedelta(hours=3)

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
  try :
    msg = EmailMessage()
    msg["Subject"] = "Verify your SmartLine account"
    msg["From"] = "smartline.authentication@gmail.com"
    msg["To"] = user["email"]
    msg.set_content(f"Your verification code is {user['verification_code']}. \n"
    "This code will expire in 5 minutes.")
    msg.add_alternative(email_html, subtype="html")
    
    with smtplib.SMTP("smtp.gmail.com", 587, timeout=4) as server :
      server.starttls()
      server.login("smartline.authentication@gmail.com", os.environ.get("GMAIL_PASSWORD"))
      server.send_message(msg)
  except Exception as e :
    try:
      response = requests.post(
        "https://api.brevo.com/v3/smtp/email",
        json={
          "sender": {"name": "SmartLine", "email": "smartline.authentication@gmail.com"},
          "to": [{"email": user["email"], "name": user["name"]}],
          "subject": "Verify your SmartLine account",
          "htmlContent": email_html,
        },
        headers={
          "accept": "application/json",
          "api-key": os.environ.get("BREVO_API_KEY"),
          "content-type": "application/json",
        },
        timeout=10,
      )
      if response.status_code in (200, 201, 202):
        return True
      print(f"Brevo failed with status {response.status_code}: {response.text}")
    except Exception as api_err:
      print(f"Brevo connection failed: {api_err}")

    # 3) Demo-only backup, never in production
    if os.environ.get("DEBUG_OTP") == "1":
      print(f"--> [BACKUP CODE] OTP for {user['email']} is: {user['verification_code']}")
    return False



# def calculate_change(new_value, base_value):
#   if base_value <= 0 :
#     calc = 0
#   else :
#     calc = ((new_value / base_value) * 100) - 100
#   return calc
def calculate_change(new_value, base_value):
  if new_value == 0 and base_value == 0:
    return 0
  if base_value is None or base_value <= 0:
    return None
  return ((new_value / base_value) * 100) - 100

def limitFloat( floatNum ):
  return f"{floatNum: ,.1f}"


def estimation(prov_est, customer_est = None) :
  total_prov_time = 0
  notRealService = 0
  avg_prov_time = 0

  if prov_est :
    # ? this step if is list to check if get the input prov_est to dont calc it agin if i have it
    if type(prov_est) is list :
      for est in prov_est :
        start_time = datetime.strptime(est["start_time"], "%Y-%m-%d %H:%M:%S")
        end_time = datetime.strptime(est["end_time"], "%Y-%m-%d %H:%M:%S")
        duration = (end_time - start_time).total_seconds()
        if duration <= 90:
          notRealService += 1
          continue
        total_prov_time += (end_time - start_time).total_seconds() / 60
      if (len(prov_est) - notRealService) :
        avg_prov_time = total_prov_time / (len(prov_est) - notRealService)
      else :
        avg_prov_time = 5
    else :
      avg_prov_time = prov_est

    if customer_est :
      total_customer_time = 0
      notRealService = 0
      avg_customer_time = 0
      for est in customer_est :
        start_time = datetime.strptime(est["start_time"], "%Y-%m-%d %H:%M:%S")
        end_time = datetime.strptime(est["end_time"], "%Y-%m-%d %H:%M:%S")
        duration = (end_time - start_time).total_seconds()
        if duration <= 90:
          notRealService += 1
          continue
        total_customer_time += (end_time - start_time).total_seconds() / 60
      if (len(customer_est) - notRealService) :
        avg_customer_time = total_customer_time / (len(customer_est) - notRealService)
      if avg_customer_time :
        total_est_time = avg_prov_time * 0.7 + avg_customer_time * 0.3
      else :
        total_est_time = avg_prov_time
    else :
      total_est_time = avg_prov_time
  else :
    total_est_time = 0
  return total_est_time


def getCities(country) :
  if country != 'egypt' and country != 'palestinian territory occupied':
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
  elif country == 'egypt' :
    file_path = os.path.join(os.path.dirname(__file__), "static", "EGcities.json")
    with open(file_path, "r", encoding="utf-8") as file:
      cities = json.load(file)
      return jsonify(cities), 200
  elif country == 'palestinian territory occupied' :
    file_path = os.path.join(os.path.dirname(__file__), "static", "palestineCities.json")
    with open(file_path, "r", encoding="utf-8") as file:
      cities = json.load(file)
      return jsonify(cities), 200


def toMinutes(t) :
  return t.hour * 60 + t.minute

def period_bounds(period):
    if period == "today":
        current = "AND date(start_time) = date('now')"
        previous = "AND date(start_time) = date('now', '-1 day')"
    elif period == "week":
        current = "AND start_time >= datetime('now', '-7 days')"
        previous = "AND start_time >= datetime('now', '-14 days') AND start_time < datetime('now', '-7 days')"
    elif period == "month":
        current = "AND start_time >= datetime('now', '-30 days')"
        previous = "AND start_time >= datetime('now', '-60 days') AND start_time < datetime('now', '-30 days')"
    elif period == "year":
        current = "AND start_time >= datetime('now', '-365 days')"
        previous = "AND start_time >= datetime('now', '-730 days') AND start_time < datetime('now', '-365 days')"
    else:  # all
        current = ""
        previous = None
    return current, previous

# For provider Dashboard
DT_FMT = "%Y-%m-%d %H:%M:%S"
MIN_SERVICES_FOR_INSIGHTS = 20   # أقل عدد خدمات قبل ما نعرض استنتاجات
MIN_RATINGS_PER_MONTH = 5        # أقل عدد تقييمات عشان الشهر يدخل في Best-Rated

_VALID = """
  sl.start_time IS NOT NULL
  AND sl.end_time IS NOT NULL
  AND julianday(sl.end_time) > julianday(sl.start_time)
"""
_MINUTES = "(julianday(sl.end_time) - julianday(sl.start_time)) * 1440.0"


def _pct(cur, prev):
  if cur is None or prev is None or prev == 0:
    return None
  return round((cur - prev) / prev * 100, 1)


def _period_ranges(period):
  now = cairo_now()
  today = now.replace(hour=0, minute=0, second=0, microsecond=0)
  tomorrow = today + timedelta(days=1)

  if period == "week":
    cur_start = today - timedelta(days=6)
    prev_start = cur_start - timedelta(days=7)

    return (
      cur_start, tomorrow,
      prev_start, cur_start,
      "day"
    )

  if period == "year":
    cur_start = today.replace(month=1, day=1)
    cur_end = tomorrow

    prev_start = cur_start.replace(year=cur_start.year - 1)

    # Match the same elapsed period in the previous year.
    elapsed_days = (tomorrow - cur_start).days
    prev_end = min(
        prev_start + timedelta(days=elapsed_days),
        cur_start
    )

    return cur_start, cur_end, prev_start, prev_end, "month"

  # Current month compared with the same elapsed period
  # of the previous month.
  cur_start = today.replace(day=1)
  cur_end = tomorrow

  if cur_start.month == 1:
    prev_start = cur_start.replace(
      year=cur_start.year - 1,
      month=12
    )
  else:
    prev_start = cur_start.replace(
      month=cur_start.month - 1
    )

  elapsed_days = (tomorrow - cur_start).days
  prev_end = min(
    prev_start + timedelta(days=elapsed_days),
    cur_start
  )

  return cur_start, cur_end, prev_start, prev_end, "day"


def _summary(provider_id, start, end):
  row = db.execute(f"""
    SELECT
      COUNT(*) AS completed,
      AVG({_MINUTES}) AS avg_minutes,
      AVG(sl.stars) AS avg_rating,
      COUNT(sl.stars) AS rating_count
    FROM service_logs AS sl
    JOIN queues AS q ON q.id = sl.queue_id
    WHERE q.provider_id = ?
      AND {_VALID}
      AND sl.end_time >= ? AND sl.end_time < ?
  """, provider_id, start.strftime(DT_FMT), end.strftime(DT_FMT))[0]
  return row


def _series(provider_id, start, end, gran):
  """Continuous series (None for empty buckets) so charts show gaps, not zeros."""
  key_fmt = "%Y-%m-%d" if gran == "day" else "%Y-%m"
  rows = db.execute(f"""
    SELECT
      strftime('{key_fmt}', sl.end_time) AS k,
      COUNT(*) AS completed,
      AVG({_MINUTES}) AS avg_minutes,
      AVG(sl.stars) AS avg_rating,
      COUNT(sl.stars) AS rating_count
    FROM service_logs AS sl
    JOIN queues AS q ON q.id = sl.queue_id
    WHERE q.provider_id = ?
      AND {_VALID}
      AND sl.end_time >= ? AND sl.end_time < ?
    GROUP BY k
  """, provider_id, start.strftime(DT_FMT), end.strftime(DT_FMT))
  by_key = {r["k"]: r for r in rows}

  labels, completed, minutes, ratings = [], [], [], []
  if gran == "day":
    limit = min(end, cairo_now().replace(hour=0, minute=0, second=0, microsecond=0) + timedelta(days=1)) \
      if end > cairo_now() else end
    d = start
    while d < limit:
      r = by_key.get(d.strftime("%Y-%m-%d"))
      labels.append(d.strftime("%d %b"))
      completed.append(r["completed"] if r else 0)
      minutes.append(round(r["avg_minutes"], 1) if r and r["avg_minutes"] is not None else None)
      ratings.append(round(r["avg_rating"], 2) if r and r["avg_rating"] is not None else None)
      d += timedelta(days=1)
  else:
    for m in range(1, 13):
      r = by_key.get(f"{start.year}-{m:02d}")
      labels.append(datetime(start.year, m, 1).strftime("%b"))
      completed.append(r["completed"] if r else 0)
      minutes.append(round(r["avg_minutes"], 1) if r and r["avg_minutes"] is not None else None)
      ratings.append(round(r["avg_rating"], 2) if r and r["avg_rating"] is not None else None)

  return {"labels": labels, "completed": completed, "minutes": minutes, "ratings": ratings}


def _last_12_months(provider_id):
  today = cairo_now().replace(day=1, hour=0, minute=0, second=0, microsecond=0)
  months = []
  y, m = today.year, today.month
  for _ in range(12):
    months.append((y, m))
    m -= 1
    if m == 0:
      y, m = y - 1, 12
  months.reverse()

  start = datetime(months[0][0], months[0][1], 1)
  rows = db.execute(f"""
    SELECT
      strftime('%Y-%m', sl.end_time) AS k,
      COUNT(*) AS completed,
      AVG({_MINUTES}) AS avg_minutes,
      AVG(sl.stars) AS avg_rating,
      COUNT(sl.stars) AS rating_count
    FROM service_logs AS sl
    JOIN queues AS q ON q.id = sl.queue_id
    WHERE q.provider_id = ?
      AND {_VALID}
      AND sl.end_time >= ?
    GROUP BY k
  """, provider_id, start.strftime(DT_FMT))
  by_key = {r["k"]: r for r in rows}

  result = []
  for y, m in months:
    r = by_key.get(f"{y}-{m:02d}")
    result.append({
      "label": datetime(y, m, 1).strftime("%b %Y"),
      "completed": r["completed"] if r else 0,
      "avg_minutes": round(r["avg_minutes"], 1) if r and r["avg_minutes"] is not None else None,
      "avg_rating": round(r["avg_rating"], 2) if r and r["avg_rating"] is not None else None,
      "rating_count": r["rating_count"] if r else 0,
    })
  return result
