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
logo=$(cat <<EOF
 ______________________________________________
|   _   _   ___   _____                     _  |
|  | \ | | / _ \ /  ___|                   | | |
|  |  \| |/ /_\ \  '--.  __ _  __ _ _ __ __| | |
|  | . ' ||  _  | '--. \/ _  |/ _' | '__/ _' | |
|  | |\  || | | |/\__/ / (_| | (_| | | | (_| | |
|  \_| \_/\_| |_/\____/ \__, |\__,_|_|  \__,_| |
|                        __/ |                 |
|                       |___/                  |
|______________________________________________|

EOF
)

echo "$logo"
