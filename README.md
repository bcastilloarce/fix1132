# fix1132

This repository contains a Bash script designed to address specific issues related to video conferencing software on macOS. The script guides the user step by step, explaining each action and pausing for confirmation before proceeding. This ensures full control and security throughout its execution.

## Table of Contents

- [Description](#description)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Description

The `fix1132` Bash script automates the resolution of a specific video conferencing issue by guiding users through the following actions:

1. **Force Close Zoom**: Instructions for force closing Zoom using Command (⌘) + Q.

2. **Change Your Device's MAC Address**: Steps to temporarily disable Wi-Fi, select the correct network interface, and generate a new MAC address.

3. **Launch Terminal**: Instructions for launching Terminal via Command (⌘) + Spacebar.

4. **Find Current MAC Address & Generate a New One**: Prompts to display the current MAC address and generate a new one.

5. **Set New MAC Address**: Instructions for applying the new MAC address.

6. **Verify New MAC Address**: Steps to confirm that the new MAC address is active.

7. **Clean Up Zoom Data**: Guidance on navigating to the Zoom data folder, deleting `.mov` and `.mp4` files, and clearing specific database files using Text Edit.

8. **Create a Temporary Email**: Reminder that once an email is associated with the issue, it might require additional authorization to access Zoom.

## Installation

1. **Copy the Command**: Copy the following command and paste it into your terminal. This will download, navigate to the script directory, set the appropriate permissions, and execute the script:

    ```bash
    curl -O https://raw.githubusercontent.com/[username]/fix1132/main/fix1132.sh && cd fix1132 && chmod +x fix1132.sh && ./fix1132.sh
    ```

2. **Run the Script**: The script will guide you through the entire process.

## Usage

Simply follow the on-screen instructions to resolve the issue. The script will pause at each step, waiting for your confirmation before continuing.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your improvements.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
