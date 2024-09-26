#!/usr/bin/env bash

# Create the incident report file
report_file="incident_report.txt"
echo "Incident Response Report - $(date)" > "$report_file"
echo "===============================" >> "$report_file"

# 1. Collect system information
echo "Collecting system information..." >> "$report_file"
echo "System Uptime:" >> "$report_file"
uptime >> "$report_file"
echo "Memory Usage:" >> "$report_file"
free -h >> "$report_file"
echo "Disk Usage:" >> "$report_file"
df -h >> "$report_file"
echo "===============================" >> "$report_file"

# 2. Collect logs from /var/log/syslog
echo "Collecting logs from /var/log/syslog..." >> "$report_file"
tail -n 20 /var/log/syslog >> "$report_file"
echo "===============================" >> "$report_file"

# 3. Scan for open ports
echo "Scanning for open ports..." >> "$report_file"
netstat -tuln >> "$report_file"
echo "===============================" >> "$report_file"

# 4. Check for suspicious network connections
echo "Checking for suspicious network connections..." >> "$report_file"
ss -tunp >> "$report_file"
echo "===============================" >> "$report_file"

# 5. Check running processes
echo "Checking running processes..." >> "$report_file"
ps aux >> "$report_file"
echo "===============================" >> "$report_file"

# 6. Report complete
echo "Incident Response Report Completed. Check $report_file for details."
