# Docker Cleanup Script

This Docker Cleanup Script, created by Seyed Ali Emami, is a powerful Bash script designed for Ubuntu servers. It facilitates a comprehensive removal of Docker, including its containers, images, volumes, networks, and all associated files. Whether you're looking to reclaim space, start fresh with Docker, or decommission a server, this script provides both granular control and a full cleanup option to meet your needs.

## Features

- **Selective Cleanup**: Choose specific components of Docker to remove, such as containers, images, volumes, and networks.
- **Full Removal**: Execute a complete Docker cleanup, removing all components, packages, directories, and related files in one go.
- **Safety Measures**: The script includes prompts to confirm irreversible actions, reducing the risk of accidental data loss.
- **Easy to Use**: With a simple, interactive menu, users of all levels can navigate through the options and perform the desired cleanup tasks efficiently.
- **Creator's Touch**: Crafted with care by Seyed Ali Emami, ensuring reliability and effectiveness.

# Usage

## Quick Start Guide

Follow these steps to use the Docker Cleanup Script on your Ubuntu server:

1. **Clone the Repository**: Start by cloning this repository to your server where Docker is installed. Open a terminal and run the following command:

   ```bash
   git clone https://github.com/aliemamidev/Complete-Docker-Removal.git
   ```

2. **Access the Script Directory**: Change into the script's directory with:

   ```bash
   cd Complete-Docker-Removal/
   ```

3. **Execute the Script**: Run the script with root privileges to ensure it has the necessary permissions to make changes. Use the command:

   ```bash
   sudo bash docker_cleanup.sh
   ```

4. **Navigate the Menu**: Once the script is running, you'll be presented with an interactive menu. Here's what each option does:

   - **1) Complete Docker Removal**: Select this option for an all-encompassing cleanup that removes Docker containers, images, volumes, networks, and all related files and directories. Ideal for users looking to completely uninstall Docker from their system.

   - **2) Stop All Docker Containers**: This option will stop all running Docker containers. Useful if you need to halt all Docker processes without removing any data.

   - **3) Remove All Docker Components**: Choose this to delete all Docker containers, images, volumes, and networks, without uninstalling Docker itself. 

   - **4) Uninstall Docker Packages**: This removes Docker packages from your system but leaves behind data like images and containers.

   - **5) Remove Docker Directories and Files**: For cleaning up Docker directories and any remaining configuration files.

   - **6) Final Cleanup of Docker-related Files**: Executes a search and destroy for any files with 'docker' in their names across the system. Use with caution, as this can potentially remove non-Docker related files that happen to match the search criteria.

   - **7) Exit**: Exits the script without performing any operations.

Choose the option that best suits your needs. For a complete cleanup, option 1 is recommended, but if you're looking to perform specific tasks, options 2 through 6 offer targeted actions.

## Prerequisites

- Ubuntu Server (The script is designed for and tested on various versions of Ubuntu)
- Docker Installed (The script is meant for systems with Docker installed)
- Root Access (Script actions require root privileges for execution)

## Safety Warning

Before using this script, **ensure you have backed up any important data**. The operations performed by this script are irreversible and could result in data loss if executed without caution.

## Contribution

Contributions are welcome! If you have suggestions for improvements, please feel free to fork the repository, make your changes, and submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details.

## Acknowledgments

- Thanks to the Docker community for the invaluable tools and documentation.
- Special thanks to everyone who contributes to testing, improving, and providing feedback for this script.
