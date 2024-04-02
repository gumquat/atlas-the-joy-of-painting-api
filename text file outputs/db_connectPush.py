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

### CREATE THE EMPTY TABLES HERE ###
### Check if the table exists
# table_exists_query = """
#     SELECT EXISTS (
#         SELECT 1
#         FROM   information_schema.tables 
#         WHERE  table_name = 'episodes'
#     )
# """
# try:
#     cur.execute(table_exists_query)
#     table_exists = cur.fetchone()[0]
#     if not table_exists:
#         # Create the table
#         create_table_query = """
#             CREATE TABLE "episodes" (
#                 "episodeID" INT PRIMARY KEY,
#                 "title" char,
#                 "airMonth" char,
#                 "airDate" varchar,
#                 "season" INT,
#                 "episode" INT
#             );
#         """
#         cur.execute(create_table_query)
#         # Commit changes
#         conn.commit()
#         print("Table created successfully!")
#     else:
#         print("Table already exists.")
# except psycopg2.Error as e:
#     print("Error:", e)

#### THIS CODE PUSHES DATA FROM CSV FILE TO THE TABLES NAMED IN ITS ARGUMENTS ###
### change 'data'csv' with the path to your csv file
with open('cleanData/subjects.csv', 'r') as csvfile:
    cur.copy_expert("COPY subjects FROM STDIN WITH CSV HEADER DELIMITER ','", csvfile)

### CHECK THAT THE DATA WAS SUCCESSFULLY INSERTED HERE ### 
cur.execute("SELECT * FROM subjects") # query to retrieve all data from a table
rows = cur.fetchall() # Fetch all rows from the cursor
with open("subjects_data.txt", "w") as file: # Write data to a text file
    for row in rows:
        file.write(str(row) + "\n")
print("Data written successfully.")


### TABLE MANAGEMENT
# Execute a DROP TABLE query to delete the episode_colors table
# cur.execute("DROP TABLE IF EXISTS episodes")

# # Commit the transaction
# conn.commit()

# print("Table deleted successfully.")


    # CLOSE IT ALL OUT
cur.close()
conn.close()

### PICK UP FROM WHERE I LEFT OFF HERE
# https://chat.openai.com/share/5931f10b-cd20-4ba2-af98-11ee3ba32ba9
# https://chat.openai.com/share/417d17a5-9c90-465f-80a6-d8694fd00244
# https://chat.openai.com/share/51a66996-0080-4f41-9e0f-479a135ff1e8