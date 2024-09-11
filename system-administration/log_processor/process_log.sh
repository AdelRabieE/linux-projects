#!/usr/bin/env bash

# Path to the log file
LOG_FILE="/var/log/dpkg.log"

# Check if the log file exists
if [[ ! -f "$LOG_FILE" ]]; then
  echo "Log file not found at the specified path: $LOG_FILE"
  exit 1
fi

# Extract packages that were half-installed
echo "Packages that were half-installed:"
grep "half-installed" "$LOG_FILE"

# Extract packages that were successfully installed
echo "Packages that were successfully installed:"
grep "install " "$LOG_FILE" | grep -v "half-installed"

# Save the results to a file
OUTPUT_FILE="log_report.txt"
echo "Installed packages report:" > "$OUTPUT_FILE"
grep "install " "$LOG_FILE" | grep -v "half-installed" >> "$OUTPUT_FILE"

echo "The report has been saved to: $OUTPUT_FILE"
