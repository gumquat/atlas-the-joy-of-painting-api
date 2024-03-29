import csv

# Open the input CSV file
with open('Episodes_backup.csv', 'r') as input_file:
    reader = csv.reader(input_file)
    data = list(reader)

# Add the ID column
id_counter = 1
for row in data:
    row.insert(0, str(id_counter))
    id_counter += 1

# Write the modified data to a new CSV file
with open('output.csv', 'w', newline='') as output_file:
    writer = csv.writer(output_file)
    writer.writerows(data)

print("ID column added to the CSV file successfully.")