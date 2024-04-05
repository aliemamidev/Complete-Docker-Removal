# Docker Cleanup Script

This Docker Cleanup Script, created by Seyed Ali Emami, is a powerful Bash script designed for Ubuntu servers. It facilitates a comprehensive removal of Docker, including its containers, images, volumes, networks, and all associated files. Whether you're looking to reclaim space, start fresh with Docker, or decommission a server, this script provides both granular control and a full cleanup option to meet your needs.

## Features

- **Selective Cleanup**: Choose specific components of Docker to remove, such as containers, images, volumes, and networks.
- **Full Removal**: Execute a complete Docker cleanup, removing all components, packages, directories, and related files in one go.
- **Safety Measures**: The script includes prompts to confirm irreversible actions, reducing the risk of accidental data loss.
- **Easy to Use**: With a simple, interactive menu, users of all levels can navigate through the options and perform the desired cleanup tasks efficiently.
- **Creator's Touch**: Crafted with care by Seyed Ali Emami, ensuring reliability and effectiveness.

## Usage

1. **Clone the Repository**: Clone this repository to your Ubuntu server where Docker is installed.
2. **Run the Script**: Navigate to the script's directory and run it with root privileges:
   ```bash
   sudo ./docker_cleanup.sh
   ```
3. **Choose Your Option**: Follow the interactive menu to select either a full Docker removal or specific cleanup steps.

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
