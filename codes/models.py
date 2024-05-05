from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import create_engine

Base = declarative_base()

SQLALCHEMY_DATABASE_URL = f"url to db"
engine = create_engine(SQLALCHEMY_DATABASE_URL)
session = sessionmaker(autoflush=False, autocommit=False, bind=engine)
# if session:
    # print('aaa')


def get_db():
    db = session()
    try:
        yield db
    finally:
        db.close()