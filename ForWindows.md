## Table of Contents
- [1. Uninstall Zoom](#1-uninstall-zoom)
- [2. Create a New Local Windows User Account](#2-create-a-new-local-windows-user-account)
  - [A. Backup Data](#a-backup-data)
  - [B. Creating a New User Account](#b-creating-a-new-user-account)
  - [C. Transferring User Account Files](#c-transferring-user-account-files)
  - [D. Changing the Username](#d-changing-the-username)
- [3. Log Out of Your Current Account](#3-log-out-of-your-current-account)
- [4. Sign In to the New User Profile](#4-sign-in-to-the-new-user-profile)
- [5. Install the Zoom App](#5-install-the-zoom-app)
- [6. Open and Sign In to Zoom](#6-open-and-sign-in-to-zoom)
- [7. Join a Zoom Meeting](#7-join-a-zoom-meeting)

---

## 1. Uninstall Zoom
First, uninstall Zoom in your current Windows user profile by following these steps:
1. Open the **Start Menu** and search for **Control Panel**.
2. In the **Control Panel**, go to **Programs** > **Uninstall a Program**.
3. Find **Zoom** in the list, right-click it, and select **Uninstall**.

## 2. Create a New Local Windows User Account
Set up the new local Windows user account by following these instructions:
1. Press **Win + I** to open **Settings**.
2. Go to **Accounts** > **Family & other users**.
3. Click **Add someone else to this PC**.
4. Choose **I don't have this person's sign-in information**.
5. Select **Add a user without a Microsoft account**.
6. Enter the username and password, then click **Next**.
7. Optionally, set the new account as an Administrator by following the instructions below.

### A. Backup Data
Before proceeding, this script will remind the user to back up their data and create a system restore point.

### B. Creating a New User Account
The script creates a new local user account with the option to set it as an Administrator.

### C. Transferring User Account Files
The script will copy all files from the old user account to the new one.

### D. Changing the Username
The script provides an option to change the username of the new account.

### PowerShell Script
```powershell
# Prompt to remind the user to back up their data
Write-Host "Please ensure you have backed up your data and created a system restore point before proceeding." -ForegroundColor Yellow
Pause

# Create a New Local User Account
$Username = Read-Host "Enter the new username"
$Password = Read-Host "Enter the password for the new user account" -AsSecureString
$AdminOption = Read-Host "Should this account be an Administrator? (yes/no)"

# Create the user account
New-LocalUser -Name $Username -Password $Password -PasswordNeverExpires -UserMayNotChangePassword -AccountNeverExpires

if ($AdminOption -eq "yes") {
    Add-LocalGroupMember -Group "Administrators" -Member $Username
    Write-Host "User $Username has been created as an Administrator." -ForegroundColor Green
} else {
    Write-Host "User $Username has been created as a Standard User." -ForegroundColor Green
}

# Transfer User Account Files
$OldUser = Read-Host "Enter the old username to transfer files from"
$OldUserPath = "C:\Users\$OldUser"
$NewUserPath = "C:\Users\$Username"

# Ensure hidden files and folders are visible
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name Hidden -Value 1
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name ShowSuperHidden -Value 1

# Copy files from old user to new user
Write-Host "Transferring files from $OldUserPath to $NewUserPath..."
Copy-Item "$OldUserPath\*" "$NewUserPath\" -Recurse -Force
Write-Host "Files transferred successfully." -ForegroundColor Green

# Change the Username of the New Account
$NewName = Read-Host "Enter the new name for the user account (or press Enter to skip)"
if ($NewName) {
    Rename-LocalUser -Name $Username -NewName $NewName
    Write-Host "Username changed to $NewName." -ForegroundColor Green
} else {
    Write-Host "Username change skipped." -ForegroundColor Yellow
}

Write-Host "All tasks completed successfully. Please restart your computer." -ForegroundColor Green
Pause
```

### Instructions:
1. **Backup Reminder**: The script starts with a reminder to back up data and create a system restore point.
2. **Create New User**: It asks for a new username and password, and whether to make the user an Administrator.
3. **Transfer Files**: Prompts for the old username and transfers files from the old to the new account.
4. **Change Username**: Optionally allows renaming the new user account.

Save this script as a `.ps1` file and execute it in PowerShell as an administrator.

## 3. Log Out of Your Current Account
After setting up the new local Windows user account:
1. Click on the **Start Menu** and select your user profile.
2. Choose **Sign out** from the menu.

## 4. Sign In to the New User Profile
1. At the login screen, select the new user profile you just created.
2. Enter the password to sign in.

## 5. Install the Zoom App
1. Open a web browser and navigate to the [Zoom Download Center](https://zoom.us/download).
2. Download and install the Zoom client for meetings.

## 6. Open and Sign In to Zoom
1. Open the **Zoom** app on your new user account.
2. Sign in using your credentials.

## 7. Join a Zoom Meeting
1. After signing in, select **Join a Meeting**.
2. Enter the meeting ID and your name, then click **Join**.

---

These steps should resolve any issues you were experiencing with Zoom on your previous user profile. If the problem persists, further troubleshooting may be required.


Este documento está mejor organizado y sigue las buenas prácticas de Markdown, lo que debería facilitar la lectura y comprensión cuando lo subas al repositorio.