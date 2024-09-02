#!/usr/bin/env bash

# Define the release file path
release_file=/etc/os-release

# Check for Arch-based systems and update
if grep -q "Arch" $release_file; then
    echo "Updating Arch-based system..."
    sudo pacman -Syu
    if [ $? -eq 0 ]; then
        echo "Arch system updated successfully."
    else
        echo "Failed to update Arch system." >&2
    fi
fi

# Check for Debian/Ubuntu-based systems and update
if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file; then
    echo "Updating Debian/Ubuntu-based system..."
    sudo apt update
    if [ $? -eq 0 ]; then
        sudo apt dist-upgrade -y
        if [ $? -eq 0 ]; then
            echo "Debian/Ubuntu system updated successfully."
        else
            echo "Failed to upgrade Debian/Ubuntu system." >&2
        fi
    else
        echo "Failed to update package lists on Debian/Ubuntu system." >&2
    fi
fi

# Check for Fedora-based systems and update
if grep -q "Fedora" $release_file; then
    echo "Updating Fedora-based system..."
    sudo dnf update -y
    if [ $? -eq 0 ]; then
        echo "Fedora system updated successfully."
    else
        echo "Failed to update Fedora system." >&2
    fi
fi

# If distribution is not supported
if ! grep -q "Arch" $release_file && ! grep -q "Debian" $release_file && ! grep -q "Ubuntu" $release_file && ! grep -q "Fedora" $release_file; then
    echo "Unsupported distribution. Please update manually."
fi
