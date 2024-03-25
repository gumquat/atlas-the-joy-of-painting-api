# Python with SQLAlchemy
# SQLAlchemy to read a JSON file and insert data into a PostgreSQL database
import json
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# Read JSON file
with open('data.json') as f:
    data = json.load(f)

# Create database engine and session
engine = create_engine('postgresql://user:password@localhost/mydatabase')
Base = declarative_base()
Session = sessionmaker(bind=engine)
session = Session()

# Define table model
class User(Base):
    __tablename__ = 'users'
    id = Column(Integer, primary_key=True)
    name = Column(String)
    age = Column(Integer)

# Create table
Base.metadata.create_all(engine)

# Insert data
for item in data:
    user = User(name=item['name'], age=item['age'])
    session.add(user)

# Commit changes
session.commit()