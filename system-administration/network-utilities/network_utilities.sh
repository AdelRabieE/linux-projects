#!/usr/bin/env bash

function check_network() {
    echo "Checking network status..."
    if ping -c 1 google.com &> /dev/null; then
        echo "Network is working."
    else
        echo "Network issue detected."
    fi
}

function display_ip() {
    echo "Your IP address is:"
    if command -v ip &> /dev/null; then
        ip addr show | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}' | cut -d/ -f1
    else
        echo "ip command is not installed. Please install it using: sudo apt install iproute2"
    fi
}

function traceroute_server() {
    read -p "Enter the server to traceroute: " server
    if command -v traceroute &> /dev/null; then
        traceroute "${server}"
    else
        echo "traceroute command is not installed. Please install it using: sudo apt install traceroute"
    fi
}

while true; do
    clear
    echo "Network Utilities Menu:"
    echo "1: Check network connection"
    echo "2: Display IP address"
    echo "3: Traceroute to a server"
    echo "4: Quit"
    read -sn1 choice
    case "$choice" in
        1) check_network ;;
        2) display_ip ;;
        3) traceroute_server ;;
        4) exit 0 ;;
    esac
    read -n1 -p "Press any key to continue..."
done
