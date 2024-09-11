#!/bin/bash

# Get the continent parameter
continent="$1"

# Check if continent name was supplied
if [[ -z "$continent" ]]; then
    echo "Error: No continent name supplied."
    exit 1
fi

# File paths
country_file="country_capitals.txt"
lat_long_file="capitals_lat_long.txt"

# Check if country_capitals.txt exists
if [[ ! -f "$country_file" ]]; then
    echo "Error: country_capitals.txt not found."
    exit 1
fi

# Check if capitals_lat_long.txt exists
if [[ ! -f "$lat_long_file" ]]; then
    echo "Error: capitals_lat_long.txt not found."
    exit 1
fi

# Temporary file names using mktemp for safety
temp_country_file=$(mktemp)
temp_lat_long_file=$(mktemp)
joined_file=$(mktemp)

# Output file based on the continent
output_file="${continent,,}_cities.csv"

# Process country_capitals.txt
tr '[:lower:]' '[:upper:]' < "$country_file" | sed 's/\t/,/g' | sed '/^$/d' | sort -t ',' -k3,3 > "$temp_country_file"

# Process capitals_lat_long.txt
tr '[:lower:]' '[:upper:]' < "$lat_long_file" | sort -t ',' -k1,1 > "$temp_lat_long_file"

# Join the files
join -t ',' -1 3 -2 1 "$temp_country_file" "$temp_lat_long_file" > "$joined_file"

# Add header to the output file
sed -i '1i Continent,Country,City,Latitude,Longitude' "$joined_file"

# Filter the data by the continent
grep "$continent" "$joined_file" > "$output_file"

# Clean up temporary files
rm "$temp_country_file" "$temp_lat_long_file" "$joined_file"

# Print completion message
echo "Processing complete. Output file: $output_file"
