import pandas as pd
import ast

# Read the input CSV file
df = pd.read_csv('dirtyData/colorsUsed.csv')

# Check if the column 'colorID' exists
if 'colorID' in df.columns:
    # Convert the 'colorID' column to a list of lists
    df['colorID'] = df['colorID'].apply(ast.literal_eval)

    # Create a new column 'updated_colorID' with the updated values
    df['updated_colorID'] = df['colorID'].apply(lambda x: ['COL' + str(num) for num in x])

    # Drop the original 'colorID' column
    df.drop('colorID', axis=1, inplace=True)

    # Rename the 'updated_colorID' column to 'colorID'
    df.rename(columns={'updated_colorID': 'colorID'}, inplace=True)

    # Write the updated data to a new CSV file
    df.to_csv('updated_episode_colors.csv', index=False)
    print("Data updated and written to 'updated_episode_colors.csv'")
else:
    print("The input CSV file does not have a column named 'colorID'.")