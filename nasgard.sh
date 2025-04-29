#!/bin/bash
set -euo pipefail

#logo
source "$(dirname "$0")/scripts/logo.sh"

#DEPENDANCIES

Package_list=(dialog wget sudo bash lsb-release)

echo "------------------------------------------------ "
echo "  Updating Debian package lists..."
echo "------------------------------------------------ "
sudo apt-get update -y

if [ $? -ne 0 ]; then
	echo " Failed to update package lists."
	exit 1
fi

echo "------------------------------------------------ "
echo "  Upgrading Packages..."
echo "------------------------------------------------ "

if [ $? -ne 0 ]; then
	echo " Failed to upgrade lists."
	exit 1
fi

echo "------------------------------------------------ "
echo "  Debian Updated and Upgraded."
echo "  Installing dependencies..."
echo "------------------------------------------------ "
sudo apt-get install -y "${Package_list[@]}"

if [ $? -ne 0 ]; then
	echo " Failed to install dependencies."
	exit 1
fi

dialog --title "NASgard" \
       --msgbox "Welcome to NASgard setup!\nThe first user friendly setup." 8 50






print_logo
