import datetime
from pydantic import BaseModel


class ToDb(BaseModel):
    city: str
    description: str
    temperature: float
    humidity: float
    icon: str
    wind: float
    weather_when: datetime.datetime


class Return(ToDb):
    pass
