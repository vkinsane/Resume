#!/bin/bash

# Set the source folder containing text files
source_folder="C:/Users/Acer/Desktop/July"

# Specify the output file
output_file="my_combined_text.txt"

# Remove the output file if it already exists
if [ -e "$output_file" ]; then
    rm "$output_file"
fi

# Loop through all text files in the source folder and append their contents to the output file
for file in "$source_folder"/*.txt; do
    if [ -f "$file" ]; then
        cat "$file" >> "$output_file"
    fi
done

echo "Combined text files into $output_file"
