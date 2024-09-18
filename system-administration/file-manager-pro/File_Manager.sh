#!/usr/bin/env bash

# Function to create a directory
function create_directory() {
    read -p "Enter directory name to create: " directory
    if [ -d "${directory}" ]; then
        echo "Directory already exists!"
    else
        mkdir "${directory}"
        echo "Directory '${directory}' created."
    fi
}

# Function to delete a directory
function delete_directory() {
    read -p "Enter directory name to delete: " directory
    if [ -d "${directory}" ]; then
        rm -r "${directory}"
        echo "Directory '${directory}' deleted."
    else
        echo "Directory does not exist!"
    fi
}

# Function to move a file
function move_file() {
    read -p "Enter file name to move: " file
    read -p "Enter destination directory: " dest
    if [ -f "${file}" ] && [ -d "${dest}" ]; then
        mv "${file}" "${dest}"
        echo "File '${file}' moved to '${dest}'."
    else
        echo "Invalid file or destination!"
    fi
}

# Function to list directory contents
function list_directory_contents() {
    read -p "Enter directory to list: " directory
    if [ -d "${directory}" ]; then
        ls -l "${directory}"
    else
        echo "Directory does not exist!"
    fi
}

# Function to change file or directory permissions
function change_permissions() {
    read -p "Enter file or directory name: " target
    read -p "Enter permissions (e.g., 755): " perms
    chmod "${perms}" "${target}"
    echo "Permissions for '${target}' changed to '${perms}'."
}

# Main loop to display menu and process user choice
while true; do
    clear
    echo "Choose an option:"
    echo "1: Create a directory"
    echo "2: Delete a directory"
    echo "3: Move a file"
    echo "4: List directory contents"
    echo "5: Change file/directory permissions"
    echo "6: Quit"
    read -sn1 choice
    case "$choice" in
        1) create_directory ;;
        2) delete_directory ;;
        3) move_file ;;
        4) list_directory_contents ;;
        5) change_permissions ;;
        6) exit 0 ;;
    esac
    read -n1 -p "Press any key to continue..."
done
