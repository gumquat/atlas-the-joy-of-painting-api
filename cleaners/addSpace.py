import csv

# Open the input CSV file
with open('Episodes_backup.csv', 'r') as input_file:
    reader = csv.reader(input_file)
    data = list(reader)

# Add a space after the first comma in each line
modified_data = []
for row in data:
    first_comma_index = row[0].find(',')
    if first_comma_index != -1:
        row[0] = row[0][:first_comma_index+1] + ' ' + row[0][first_comma_index+1:]
    modified_data.append(row)

# Write the modified data to a new CSV file
with open('output.csv', 'w', newline='') as output_file:
    writer = csv.writer(output_file)
    writer.writerows(modified_data)

print("Space added after the first comma in each line successfully.")