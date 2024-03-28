def remove_chars(input_file, output_file, chars_to_remove):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            new_line = line.translate(str.maketrans('', '', chars_to_remove))
            outfile.write(new_line)

# Example usage
remove_chars('dirtyData/episodeDates.txt', 'cleanData/episodeData.txt', ',()') # Remove commas and parentheses