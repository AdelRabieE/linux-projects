# Incident Response Script

This project contains a Bash script designed to assist system administrators in collecting crucial system information for incident response and troubleshooting. The script gathers data about the system's uptime, memory usage, disk usage, logs, open ports, network connections, and running processes. This helps identify suspicious activity and diagnose system issues efficiently.

## Features

- **System Information**: Retrieves the system's uptime, memory usage, and disk usage.
- **Log Collection**: Extracts the last 20 lines from the `/var/log/syslog` file.
- **Open Ports Scan**: Lists open network ports using `netstat`.
- **Network Connections**: Displays active network connections, showing details about processes using `ss`.
- **Running Processes**: Lists all running processes using `ps aux`.

## Usage

To use this script, follow the steps below:

1. Clone this repository or download the script directly.
2. Ensure the script has execution permissions:
    ```bash
    chmod +x incident_response.sh
    ```
3. Run the script:
    ```bash
    ./incident_response.sh
    ```
4. After execution, check the `incident_report.txt` file for the collected system data:
    ```bash
    cat incident_report.txt
    ```

## Example Output

A sample of the `incident_report.txt` output will include sections like:

- **System Uptime**: Displays how long the system has been running.
- **Memory Usage**: Shows total, used, and available memory.
- **Disk Usage**: Lists filesystem usage statistics.
- **Log Data**: Provides the last 20 lines from the system log (`/var/log/syslog`).
- **Open Ports**: Details of active ports and services.
- **Network Connections**: Information on current connections and their associated processes.
- **Running Processes**: A list of all active processes on the system.

## Example Screenshot

Here are some screenshots showing the script in action and the generated report.

![incident-response-screenshot](path-to-screenshot)

## Requirements

- Linux-based system with Bash.
- The following tools should be installed:
  - `netstat`
  - `ss`
  - `ps`

## Contributing

If you'd like to contribute or suggest improvements, feel free to fork this repository and submit a pull request. Your feedback is welcome!

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
