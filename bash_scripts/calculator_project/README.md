
#### calculator.sh

- **Project Description**: `calculator.sh` is a simple Bash script that functions as an advanced calculator. It supports basic arithmetic operations including addition, subtraction, multiplication, and division.

- **How to Run**:
  1. Open your terminal.
  2. Navigate to the directory containing the script: `cd linux-projects/bash_scripts`.
  3. Ensure the script is executable: `chmod +x calculator.sh`.
  4. Run the script: `./calculator.sh`.

- **Script Features**:
  - **User Interaction**: The script prompts the user to choose an arithmetic operation and input two numbers.
  - **Operations Supported**: 
    - Addition
    - Subtraction
    - Multiplication
    - Division (with error handling for division by zero)
  - **Logging**: Each operation is logged with a timestamp in `operations.log` for future reference.

- **Example**:
  - If you choose addition and input `4` and `5`, the output will be:
    ```
    The sum of 4 and 5 is: 9
    Operation completed successfully on: [current_date_time]
    Logged operation to 'operations.log'.
    ```

This README provides a clear and concise overview of the script, making it easier for others to understand and use it.
