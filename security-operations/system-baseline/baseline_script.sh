#!/usr/bin/env bash

# baseline_script.sh - A script to collect system baseline information and compare with previous baseline

# Collect system information
echo "Collecting system information..."
echo "System Uptime:" > baseline_report.txt
uptime >> baseline_report.txt

echo -e "\nDisk Usage:" >> baseline_report.txt
df -h >> baseline_report.txt

echo -e "\nMemory Usage:" >> baseline_report.txt
free -h >> baseline_report.txt

# Collect file hashes
echo "Collecting file hashes..."
find /home/adel -type f -exec md5sum {} + > file_hashes.txt

# If a previous baseline exists, compare with it
if [ -f previous_file_hashes.txt ]; then
  echo -e "\nComparing with previous baseline..."
  diff previous_file_hashes.txt file_hashes.txt > baseline_comparison.txt

  if [ -s baseline_comparison.txt ]; then
    echo "Differences found. Check baseline_comparison.txt for details."
  else
    echo "No differences found between current and previous baseline."
  fi
else
  echo "No previous baseline found. Storing current baseline for future comparison."
fi

# Save current hashes as the new baseline
cp file_hashes.txt previous_file_hashes.txt

echo "Baseline collection and comparison complete. Data stored in baseline_report.txt and file_hashes.txt."
