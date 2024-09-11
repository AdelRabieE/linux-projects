# Geo Data Processor

This project processes and filters geographical data using Bash scripting. The script takes city and capital information from different files and filters them based on the provided continent.

## How to Use

1. Ensure the following files are in the same directory as the script:
   - `country_capitals.txt`: Contains country names, capitals, and continents.
   - `capitals_lat_long.txt`: Contains the latitude and longitude for each capital city.

2. Run the script using the following command in your terminal:
   ```bash
   ./process_data.sh "Continent_Name"
