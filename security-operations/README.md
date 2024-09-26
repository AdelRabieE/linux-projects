# System Baseline Script

## Project Overview
This project contains a Bash script designed to establish a baseline for a Linux system. The baseline represents the system's normal state, allowing future comparisons to detect changes or anomalies. It collects system information, including uptime, memory usage, disk usage, and file hashes, and stores them for future analysis.

## Features
- **System Information**: Retrieves the system's uptime, memory usage, and disk usage.
- **File Hashes**: Generates MD5 hashes for all files in the specified directories to ensure integrity.
- **Change Detection**: Compares current system state with the baseline to highlight differences.

## Usage
To use this script, follow these steps:

1. Clone this repository or download the script directly.
2. Ensure the script has execution permissions:
    ```bash
    chmod +x baseline_script.sh
    ```
3. Run the script to collect the system baseline:
    ```bash
    ./baseline_script.sh
    ```
4. Check the `baseline_report.txt` and `file_hashes.txt` for the collected system data:
    ```bash
    cat baseline_report.txt
    cat file_hashes.txt
    ```
5. To compare the current system state with the baseline, re-run the script after a period of time and check for changes.

## Example Output
Here are some screenshots showing the script in action and the generated reports:

### System Baseline Collection:
![System Baseline Collection](./Screenshot%20from%202024-09-26%2010-02-13.png)

### Disk and Memory Usage:
![Disk and Memory Usage](./Screenshot%20from%202024-09-26%2010-03-56.png)

### File Hashes Generation:
![File Hashes](./Screenshot%20from%202024-09-26%2010-06-15.png)

### Change Detection Output:
![Change Detection](./Screenshot%20from%202024-09-26%2010-06-34.png)

## Requirements
This script is designed to run on Linux-based systems with Bash. The following tools should be installed:
- `md5sum`: For generating file hashes.
- `stat` and `df`: For collecting file and disk information.

## Contributing
If you'd like to contribute or suggest improvements, feel free to fork this repository and submit a pull request. Your feedback is welcome!
