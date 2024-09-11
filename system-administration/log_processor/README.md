# Log Processor Project

This project processes the `dpkg` log file to extract information about packages that were either half-installed or successfully installed. It helps system administrators to quickly find installation-related issues by reviewing the logs.

## How to Run

1. **Open your terminal**.
2. **Navigate to the script's directory**:
    ```bash
    cd path/to/log_processor
    ```
3. **Make the script executable**:
    ```bash
    chmod +x process_log.sh
    ```
4. **Run the script**:
    ```bash
    ./process_log.sh
    ```

## Script Output

- The script will display a list of packages that were half-installed and successfully installed.
- It will also save the successfully installed packages into a file called `log_report.txt`.

## Files

- `process_log.sh`: The main script that processes the log file.
- `log_report.txt`: The output file that contains successfully installed packages.

## License

This project is licensed under the MIT License - see the [LICENSE](../LICENSE) file for details.
