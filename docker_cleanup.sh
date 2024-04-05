#!/bin/bash

# Enhanced Docker Cleanup Script
# Creator: Seyed Ali Emami
# https://github.com/aliemamidev/Complete-Docker-Removal
#
# This script allows for comprehensive removal of Docker and its components from an Ubuntu server.
# Users can opt for a full cleanup or select specific steps. The menu-driven approach ensures
# flexibility and control over the removal process.
#
# WARNING: This script performs irreversible operations. Ensure to back up any important data.

# Ensure the script is executed with root privileges
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root. Please run again with sudo or as root." 1>&2
   exit 1
fi

# Function Definitions

# Stop all Docker containers
stop_containers() {
    echo "Stopping all Docker containers..."
    sudo docker stop $(sudo docker ps -aq)
    echo "All Docker containers have been stopped."
}

# Remove all Docker containers, images, volumes, and networks
remove_docker_components() {
    echo "Removing Docker containers, images, volumes, and networks..."
    sudo docker rm $(sudo docker ps -aq) # Remove containers
    sudo docker rmi $(sudo docker images -q) # Remove images
    sudo docker volume rm $(sudo docker volume ls -q) # Remove volumes
    sudo docker network rm $(sudo docker network ls -q) # Remove networks
    echo "Docker components removed."
}

# Uninstall Docker packages
uninstall_docker() {
    echo "Uninstalling Docker packages..."
    sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli
    sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce
    echo "Docker packages have been uninstalled."
}

# Remove Docker directories and files
remove_docker_files() {
    echo "Removing Docker directories and files..."
    sudo rm -rf /var/lib/docker /etc/docker
    sudo rm /etc/apparmor.d/docker
    sudo groupdel docker
    sudo rm -rf /var/run/docker.sock
    echo "Docker directories and files have been removed."
}

# Final cleanup of Docker-related files
final_cleanup() {
    echo "Initiating final cleanup of Docker-related files..."
    echo "WARNING: This will search for and delete files with 'docker' in their names."
    read -p "Proceed with caution. Are you sure you want to continue? (y/N): " confirm
    if [[ $confirm =~ ^[Yy]$ ]]; then
        sudo find / -name '*docker*' -exec rm -rf {} +
        echo "Final cleanup completed."
    else
        echo "Final cleanup skipped. Manual review recommended."
    fi
}

# Display Menu and Handle User Input
display_menu() {
    echo "-----------------------------------------"
    echo "Docker Cleanup Script - Created by Seyed Ali Emami"
    echo "-----------------------------------------"
    echo "Please choose an option from the menu:"
    echo "1) Complete Docker Removal"
    echo "2) Stop All Docker Containers"
    echo "3) Remove All Docker Components"
    echo "4) Uninstall Docker Packages"
    echo "5) Remove Docker Directories and Files"
    echo "6) Final Cleanup of Docker-related Files"
    echo "7) Exit"
    echo "-----------------------------------------"
}

# Main Loop
while true; do
    display_menu
    read -p "Select an option: " option
    case $option in
        1)
            stop_containers
            remove_docker_components
            uninstall_docker
            remove_docker_files
            final_cleanup
            break;;
        2) stop_containers;;
        3) remove_docker_components;;
        4) uninstall_docker;;
        5) remove_docker_files;;
        6) final_cleanup;;
        7) echo "Exiting script. No changes were made." 
           break;;
        *) echo "Invalid option. Please try again.";;
    esac
done

echo "Thank you for using the Docker Cleanup Script by Seyed Ali Emami. Goodbye!"
