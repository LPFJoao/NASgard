#!/bin/bash

# Update and upgrade Debian
echo " --------------------------------------------------- "
echo "  Updating Debian package lists..."
echo " --------------------------------------------------- "
sudo apt-get update -y

if [ $? -ne 0 ]; then
    echo " Failed to update package lists."
    exit 1
fi

echo " --------------------------------------------------- "
echo "  Upgrading installed packages..."
echo " --------------------------------------------------- "
sudo apt-get upgrade -y

if [ $? -ne 0 ]; then
    echo " Failed to update package lists."
    exit 1
fi

echo " --------------------------------------------------- "
echo "  Debian update and upgrade complete."
echo " --------------------------------------------------- "

# logo

source "$(dirname "$0")/logo.sh"
print_logo
