#!/usr/bin/python3

import json
import requests

WEATHER_CODES = {
    "113": "",
    "116": "",
    "119": "",
    "122": "",
    "143": "🌫",
    "176": "🌦",
    "179": "🌧",
    "182": "🌧",
    "185": "🌧",
    "200": "⛈",
    "227": "🌨",
    "230": "",
    "248": "🌫",
    "260": "🌫",
    "263": "🌦",
    "266": "🌦",
    "281": "🌧",
    "284": "🌧",
    "293": "🌦",
    "296": "🌦",
    "299": "🌧",
    "302": "🌧",
    "305": "🌧",
    "308": "🌧",
    "311": "🌧",
    "314": "🌧",
    "317": "🌧",
    "320": "🌨",
    "323": "🌨",
    "326": "🌨",
    "329": "",
    "332": "",
    "335": "",
    "338": "",
    "350": "🌧",
    "353": "🌦",
    "356": "🌧",
    "359": "🌧",
    "362": "🌧",
    "365": "🌧",
    "368": "🌨",
    "371": "",
    "374": "🌧",
    "377": "🌧",
    "386": "⛈",
    "389": "🌩",
    "392": "⛈",
    "395": "",
}

data = {}

try:
    weather = requests.get("https://wttr.in/Guwahati?format=j1", timeout=5).json()

    data["text"] = (
        weather["current_condition"][0]["temp_C"]
        + "° "
        + WEATHER_CODES[weather["current_condition"][0]["weatherCode"]]
        + "    "
        + f"↑ {weather['weather'][0]['maxtempC']}° ↓ {weather['weather'][1]['mintempC']}° "
    )
except Exception:
    data["text"] = "…"

print(json.dumps(data))
