# import pandas as pandas
import csv
import psycopg2
from psycopg2 import sql

#/var/lib/postgresql/14/main

    # CONNECT TO DATBASE
conn = psycopg2.connect(
    dbname="thejoyofpainting",
    user="postgres",
    password="Password123",
    host="localhost",
    port="5432"
)
# Create a cursor object to execute SQL queries
cur = conn.cursor()

# RENAME A COLUMN
# try:
#     cur.execute("ALTER TABLE episodes RENAME COLUMN airMonth TO air_month;")
#     conn.commit()
#     print("Column renamed successfully!")
# except (Exception, psycopg2.DatabaseError) as error:
#     print(f"Error: {error}")
#     conn.rollback()


### MAKE A TON OF TABLES ALL AT ONCE
the_big_query = '''
CREATE TABLE "episodes" (
    "episodeID" INT PRIMARY KEY,
    "title" varchar,
    "airMonth" varchar,
    "airDate" varchar,
    "season" INT,
    "episode" INT
);

CREATE TABLE "colors" (
    "colorID" INT PRIMARY KEY,
    "colorName" varchar,
    "hexCode" varchar
);

CREATE TABLE "subjects" (
    "subjectID" INT PRIMARY KEY,
    "subjectName" VARCHAR
);

CREATE TABLE "episode_colors" (
    "episodeID" INT,
    "colorID" INT,
    PRIMARY KEY("episodeID", "colorID")
);

ALTER TABLE "episode_colors" ADD FOREIGN KEY ("episodeID") REFERENCES "episodes" ("episodeID");
ALTER TABLE "episode_colors" ADD FOREIGN KEY ("colorID") REFERENCES "colors" ("colorID");

CREATE TABLE "episode_subjects" (
    "episodeID" INT,
    "subjectID" INT,
    PRIMARY KEY("episodeID", "subjectID")
);

ALTER TABLE "episode_subjects" ADD FOREIGN KEY ("episodeID") REFERENCES "episodes" ("episodeID");
ALTER TABLE "episode_subjects" ADD FOREIGN KEY ("subjectID") REFERENCES "subjects" ("subjectID");
'''

cur.execute(the_big_query)
conn.commit()

    # CLOSE IT ALL OUT
cur.close()
conn.close()
