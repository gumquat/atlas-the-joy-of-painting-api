import pandas as pd

# Read the input CSV file
df = pd.read_csv('cleanData/episodes.csv')

# Check if the column 'airMonth' exists
if 'airMonth' in df.columns:
    # Get the index of the 'airMonth' column
    airMonth_index = df.columns.get_loc('airMonth')

    # Create a new DataFrame with the reordered columns
    new_df = pd.DataFrame({
        df.columns[0]: df[df.columns[0]],
        df.columns[1]: df[df.columns[1]],
        df.columns[airMonth_index]: df[df.columns[airMonth_index]],
        df.columns[2]: df[df.columns[2]],
        df.columns[3]: df[df.columns[3]]
    })

    # Add the remaining columns to the new DataFrame
    for i in range(4, len(df.columns)):
        if i != airMonth_index:
            new_df[df.columns[i]] = df[df.columns[i]]

    # Write the updated data to a new CSV file
    new_df.to_csv('updated_episodes.csv', index=False)
    print("Data updated and written to 'updated_episodes.csv'")
else:
    print("The input CSV file does not have a column named 'airMonth'.")