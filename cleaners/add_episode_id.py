import csv

def add_episode_id(input_file, output_file):
    # Open the input CSV file for reading
    with open(input_file, 'r') as csvfile:
        reader = csv.DictReader(csvfile)
        header = reader.fieldnames

        # Add the new column 'episodeID' to the header
        header.append('episodeID')

        # Open the output CSV file for writing
        with open(output_file, 'w', newline='') as csvfile_out:
            writer = csv.DictWriter(csvfile_out, fieldnames=header)
            writer.writeheader()

            episode_id = 1
            for row in reader:
                row['episodeID'] = str(episode_id)
                writer.writerow(row)
                episode_id += 1

# Example usage
add_episode_id('dirtyData/episodeDates.txt', 'output.csv')