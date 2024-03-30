import csv
# how to use
# csv_file: The path to the CSV file.
# table_name: The name of the PostgreSQL table you want to insert data into.
# columns: A list of column names in the order they appear in the CSV file.
# edit this data at the bottom, then run!

def generate_insert_statements(csv_file, table_name, columns):
    with open(csv_file, 'r') as file:
        csv_reader = csv.reader(file)
        
        # Skip the header row
        header = next(csv_reader)
        
        for row in csv_reader:
            values = [f"'{value}'" for value in row]
            values_str = ', '.join(values)
            columns_str = ', '.join(columns)
            insert_stmt = f"INSERT INTO {table_name} ({columns_str}) VALUES ({values_str});"
            print(insert_stmt)

# Example usage
csv_file = 'data.csv'
table_name = 'your_table'
columns = ['column1', 'column2', 'column3']

generate_insert_statements(csv_file, table_name, columns)