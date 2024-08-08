#!/bin/bash

# Define color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Función para pausar y esperar que el usuario presione Enter
pause() {
  echo ""
  read -rp "Press Enter to continue..."
}

echo -e "${GREEN}Fix 1132 - Step by Step Guide${NC}"
echo -e "${RED}Note:${NC} Please follow each step carefully."

pause

# Step 1: Force Close Zoom
echo -e "${GREEN}Step 1: Force Close Zoom${NC}"
echo "Hold Command (⌘) + Press Q with Zoom open."
pause

# Step 2: Change Your Device's Mac Address
echo -e "${GREEN}Step 2: Change Your Device's Mac Address${NC}"
echo "1. Temporarily disable Wi-Fi."
echo "2. While holding down the Option key (⌥), click on the Wi-Fi icon in the menu bar."
echo "3. Select the Wi-Fi network you're connected to."
echo "4. Check the Wi-Fi interface (usually en0 or en1)."
pause

# Step 3: Launch Terminal
echo -e "${GREEN}Step 3: Launch Terminal${NC}"
echo "Hold Command (⌘) + Press the spacebar."
echo "Type 'Terminal' or press F4, then open the Terminal app."
pause

# Step 4: Find Current Address & Generate a New One
echo -e "${GREEN}Step 4: Find Current Address & Generate a New One${NC}"
echo "1. Run the following command in Terminal to find your current MAC address:"
echo -e "${RED}ifconfig en0 | grep ether${NC}"
pause

echo "2. Now, generate a new MAC address by running the following command:"
echo -e "${RED}openssl rand -hex 6 | sed 's/\\(..\\)/\\1:/g; s/.$//'${NC}"
pause

# Step 5: Copy & Paste New MAC Address
echo -e "${GREEN}Step 5: Copy & Paste New MAC Address${NC}"
echo "1. Run the following command to set the new MAC address:"
echo -e "${RED}sudo ifconfig en0 ether YOUR_NEW_MAC_ADDRESS${NC}"
echo "Replace 'YOUR_NEW_MAC_ADDRESS' with the address you generated."
pause

# Step 6: Test New MAC Address
echo -e "${GREEN}Step 6: Test New MAC Address${NC}"
echo "Run the following command to verify the new MAC address:"
echo -e "${RED}ifconfig en0 | grep ether${NC}"
pause

# Step 7: Clean Out Your Folder
echo -e "${GREEN}Step 7: Clean Out Your Folder${NC}"
echo "1. Open Finder, then press Shift+Command+G to Go To Folder."
echo "2. Navigate to the following path:"
echo -e "${RED}~/Library/Application Support/zoom.us/data${NC}"
echo "3. Delete all .mov and .mp4 files, and open 'zoomus.enc.db' with Text Edit to clear its contents."
pause

# Final Step: Create a Temp Email
echo -e "${GREEN}Final Step: Create a Temp Email${NC}"
echo "Once an email is associated with 1132, it will no longer be able to access Zoom without authorization."
echo -e "${GREEN}Reopening Zoom should prompt 'update successful'.${NC}"

echo -e "${GREEN}All steps completed successfully!${NC}"
