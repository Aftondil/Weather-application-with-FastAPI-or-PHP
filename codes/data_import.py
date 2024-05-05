import datetime

from sqlalchemy.ext.asyncio import AsyncSession
import httpx
import requests
from schema import ToDb
from models import get_db
from database import Weather
from fastapi import Depends
from sqlalchemy.orm import Session


def from_api_to_db(city: str, db: Session = Depends(get_db)):
    data: ToDb = from_api(city)
    new_weather = Weather(
        city=data.city,
        humidity=data.humidity,
        temperature=data.temperature,
        description=data.description,
        wind=data.wind,
        icon=data.icon,
        weather_when=datetime.datetime.now()
    )
    db.add(new_weather)
    db.commit()
    db.refresh(new_weather)
    return new_weather


def from_api(city):
    url = f"https://api.openweathermap.org/data/2.5/weather?units=metric&appid={api_code}&q={city}"
    # async with httpx.AsyncClient() as client:
    #     response = await client.get(url)
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        ret = ToDb(
            description=data['weather'][0]['main'],
            wind=data['wind']['speed'],
            icon=data['weather'][0]['icon'],
            temperature=data['main']['temp'],
            humidity=data['main']['humidity'],
            city=data['name'],
            weather_when=datetime.datetime.now()
        )
        return ret
    else:
        response.raise_for_status()

# from_api('tashkent')
# import asyncio
#
# a = asyncio.run(from_api_to_db(city='london'))
# print(a)
