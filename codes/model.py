# from sqlalchemy import create_engine, Column, Integer, String, FLOAT, DateTime
# from sqlalchemy.orm import sessionmaker
# from sqlalchemy.ext.declarative import declarative_base
#
#
# # Define database URL and create engine
# def get_session():
#     db_url = "mysql+mysqlconnector://root:$Qwerty12345@localhost/db2427240"
#     engine = create_engine(db_url)
#     Session = sessionmaker(bind=engine)
#     session = Session()
#     return session
#
#
# Base = declarative_base()
#
#
# class Weather(Base):
#     __tablename__ = 'weather'
#     # id = Column(Integer, primary_key=True)
#     description = Column(String(100))
#     temperature = Column(FLOAT)
#     wind = Column(FLOAT)
#     weather_when = Column(DateTime)
#     city = Column(String(100), primary_key=True)
#     humidity = Column(FLOAT)
#     icon = Column(String(100))
#
#     def __init__(self, description, temperature, wind, weather_when, city, humidity, icon):
#         self.weather_when = weather_when
#         self.wind = wind
#         self.icon = icon
#         self.temperature = temperature
#         self.humidity = humidity
#         self.city = city
#         self.description = description
#
#     # def __repr__(self):
#     #     return f"'speed': {self.wind} 'temperature': {self.temperature}"
#
