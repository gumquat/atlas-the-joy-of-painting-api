# for cleaning Episode Data, adds a comma after the second '"" found
def process_file(input_file, output_file):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            line = line.strip()  # Remove leading/trailing whitespace
            if '"' in line:
                parts = line.split('"', 2)
                if len(parts) == 3:
                    part1, part2, part3 = parts
                    new_line = f'{part1}"{part2}",' + part3
                    outfile.write(new_line + '\n')
                else:
                    outfile.write(line + '\n')
            else:
                outfile.write(line + '\n')

# Example usage
process_file('cleanData/episodeData.txt', 'cleanData/episodeDataFinal.txt')
