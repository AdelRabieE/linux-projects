#!/usr/bin/env bash

# Function to add a new user
function add_user() {
    read -p "Enter the username to add: " username
    sudo useradd "${username}"
    echo "User '${username}' created."
}

# Function to delete an existing user
function delete_user() {
    read -p "Enter the username to delete: " username
    sudo userdel "${username}"
    echo "User '${username}' deleted."
}

# Function to list all users
function list_users() {
    echo "Listing all users:"
    cut -d: -f1 /etc/passwd
}

# Function to change a user's password
function change_password() {
    read -p "Enter the username to change password: " username
    sudo passwd "${username}"
}

# Main loop for the menu
while true; do
    clear
    echo "User Management Menu:"
    echo "1: Add a user"
    echo "2: Delete a user"
    echo "3: List all users"
    echo "4: Change user password"
    echo "5: Quit"
    read -sn1 choice
    case "$choice" in
        1) add_user ;;
        2) delete_user ;;
        3) list_users ;;
        4) change_password ;;
        5) exit 0 ;;
    esac
    read -n1 -p "Press any key to continue..."
done
