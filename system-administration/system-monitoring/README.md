# System Monitoring Project

This project is designed to help you monitor essential system resources such as CPU usage, memory consumption, disk utilization, and network activity. It includes a Bash script that generates comprehensive reports in both text and PDF formats.

## How to Run

1. Open your terminal.
2. Navigate to the script's directory.
3. Make the script executable: Run `chmod +x system_report.sh` to ensure the script can be executed.
4. Execute the script: Use `./system_report.sh` to start the monitoring process.

## Output

- `system_report.txt`: A detailed text report containing all the monitored system data.
- `system_report.pdf`: A PDF version of the report for easy sharing and printing.

## Requirements

- **Bash**: The script is written in Bash, so you'll need a Bash environment to run it.
- **enscript** and **ps2pdf**: These utilities are required for converting the text report into a PDF.

This script provides a straightforward and efficient way to keep track of your system's health, making it ideal for basic monitoring tasks.
