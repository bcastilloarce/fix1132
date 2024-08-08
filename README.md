# fix1132

 This repository contains a Bash script that provides a step-by-step guide to resolve a specific issue related to video conferencing software. The script is interactive and is designed to guide the user through the process of modifying the MAC address and other settings in macOS. It explains each action and pauses to await user confirmation before proceeding to the next step. The script offers full control and security in its execution.

```markwdown
contenido del readme: # Fix 1132

### Force Close Zoom

- Hold Command (or Cmd) ⌘ + Press Q
  - with Zoom open!

## Change your Device's Mac Address

- Temporarily disable Wi-Fi
  - While holding down the Option key, ⌥, Click
    - on the Wi-Fi icon in the menu bar,
    - then select “HoessGotWiFi2" (or whatever you're connected to)
    - Also check the Wi-Fi interface for en0 or en1
    - You can now release ⌥

## Launch Terminal

- Hold Command (or Cmd) ⌘ + Press the spacebar
  - Type in "Terminal" or Press F4 to Open
  - Your Apps and search for "Terminal"
  - Open it

## Find Current Address & Generate a Sluttery 1

- Remember your Wi-Fi interface; replace "en0" below with what you saw in Step One
  - Now copy & paste the line below into Terminal
  - then press Enter

    ```bash
    ifconfig en0 | grep ether
    ```

- **THIS Output(1) is your current address**
  - Now copy and paste what's below into Terminal
  - Press Enter to generate a Hexi

    ```bash
    openssl rand -hex 6 | sed 's/$..$/\1:/g; s/.$//'
    ```

- **This Output(2) will be your new address (Do Not Share)**
  - Now copy your new XX:XX....

## Copy & Paste

- Now TYPE this command in THE N

    ```bash
    sudo ifconfig en0 ether
    ```

  - PASTE your generated (new) address after "ether"
    - with a SPACE in between.
  - PASSWORD is required to change your address.

## Test

- Now do this command again

    ```bash
    ifconfig en0 | grep ether
    ```

  - The Output(3) is your new address!
  - Now reconnect Wi-Fi!

## Clean out your Folder

- With Finder open in the Menu bar, press
  - Shift+Command+G (⇧+⌘+G) to Go To Folder
    - Enter "~" in front of the first "/" then using the
    - arrow keys or typing navigate to:

      ```bash
      ~/Library/Application Support/zoom.us/data
      ```

    - Find the waiting room folder > video
    - Delete all .mov .mp4 files
    - Search for '.db' and find zoomus.enc.db
    - Open with Text Edit and enter:
      - (⌘+A), (⌘+X), (⌘+S), (⌘+W).

## Create a Temp Email & Welcome back

- Once an Email has been associated with 1132
  - It will no longer be able to access Zoom without
  - Authorization from Zoom Trust & Safety

**Reopening Zoom should prompt "update successful"**
**This Process should take ~10 mins**
**NO downloads, NO 3rd Party Software**
**Do it as many times as you want!**

```
