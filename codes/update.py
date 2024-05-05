import database
from models import Base, engine, get_db
from fastapi import FastAPI, Depends
from schema import ToDb, Return
from sqlalchemy.orm import Session
from database import Weather
from data_import import from_api_to_db
import datetime

database.Base.metadata.create_all(bind=engine)
app = FastAPI()


@app.get("/weather/{city}", response_model=Return)
def get_weather(city: str, db: Session = Depends(get_db)):
    weather_data = db.query(Weather).filter(Weather.weather_when >= datetime.datetime.now() - datetime.timedelta(seconds=10),
                                            city.capitalize() == Weather.city).first()
    print(weather_data)
    if not weather_data:
        return from_api_to_db(city, db)
    return weather_data
