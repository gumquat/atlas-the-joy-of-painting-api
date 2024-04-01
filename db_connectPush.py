import csv
# import pandas as pandas
import psycopg2

#/var/lib/postgresql/14/main

    # CONNECT TO DATBASE
conn = psycopg2.connect(
    dbname="thejoyofpainting",
    user="postgres",
    password="Password123", # IT SAYS THIS IS INCORRECT????? <---
    host="localhost",
    port="5432"
)
# Create a cursor object to execute SQL queries
cur = conn.cursor()

# change 'data'csv' with the path to your csv file
# cleanData/colors.csv
# cleanData/episode_colors.csv
# cleanData/episode_subjects.csv
# cleanData/episodes.csv
# cleanData/subjects.csv
with open('cleanData/colors.csv', 'r') as csvfile:
    cur.copy_expert("COPY mytable FROM STDIN WITH CSV HEADER DELIMITER ','", csvfile)

    # COMMIT the transaction
conn.commit()
    # CLOSE IT ALL OUT
cur.close()
conn.close()
