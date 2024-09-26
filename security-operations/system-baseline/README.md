# System Baseline Script

## Project Overview
This project creates a baseline for the system, collecting system information, disk usage, memory usage, and file hashes for later comparison to detect changes.

## Features
- **System Information**: Uptime, memory, and disk usage collected.
- **Disk Usage**: Collects detailed disk usage stats.
- **File Hashing**: Generates hashes for critical files to detect changes.
- **Change Detection**: Compares the current state of the system with the baseline to detect any alterations.

## Usage
1. Clone this repository.
2. Ensure the script has execution permissions:
   ```bash
   chmod +x baseline_script.sh
