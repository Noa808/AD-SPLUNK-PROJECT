import re

def is_valid_line(line):
    # Check if the line has at least 8 characters, 1 number, and 1 special character
    if len(line) >= 8:
        has_number = re.search(r'\d', line) is not None
        has_special_char = re.search(r'[\W_]', line) is not None
        return has_number and has_special_char
    return False

def process_file(input_file, output_file):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            if is_valid_line(line.strip()):
                outfile.write(line)

if __name__ == "__main__":
    input_file = "input.txt"  # Replace with your input file path
    output_file = "output.txt"  # Replace with your desired output file path
    process_file(input_file, output_file)
    print(f"Lines with at least 8 characters, including a number and a special character, have been written to {output_file}.")
