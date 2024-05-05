import datetime

from sqlalchemy import Float, String, Column,  DateTime, text, func, Integer
from models import Base


class Weather(Base):
    __tablename__ = 'weather'
    id = Column(Integer, primary_key=True)
    city = Column(String, nullable=False)
    description = Column(String, nullable=False)
    temperature = Column(Float, nullable=False)
    wind = Column(Float, nullable=False)
    weather_when = Column(DateTime(timezone=True), nullable=False, server_default=text("NOW()"))
    humidity = Column(Float, nullable=False)
    icon = Column(String, nullable=False)