# System Information Collection Script

This script is a simple Windows Batch script designed to gather key system information and store it in text files for later analysis. The output files are organized into a directory called `results`.

## Features
- **Collects system information** using the `systeminfo` command.
- **Captures network configuration** with the `ipconfig /all` command.
- **Lists running tasks** using the `tasklist` command.
- **Records active network connections** with `netstat -ano`.
- **Provides detailed process information** using `wmic process list full`.

## Prerequisites
- A Windows operating system with the following commands available:
  - `systeminfo`
  - `ipconfig`
  - `tasklist`
  - `netstat`
  - `wmic`
- Basic privileges to execute these commands.

## How It Works
1. The script creates a folder named `results` in the current directory.
2. It runs several commands to collect system and network data.
3. Each command’s output is saved into a corresponding `.txt` file in the `results` folder:
   - `systeminfo.txt`: General system information.
   - `network_config.txt`: Network configuration details.
   - `tasklist.txt`: List of running tasks.
   - `netstat.txt`: Active network connections and listening ports.
   - `processes.txt`: Comprehensive details about running processes.

## Usage
1. Open a text editor, paste the script, and save it as `collect_info.bat`.
2. Open a Command Prompt with administrative privileges.
3. Navigate to the folder containing the script.
4. Run the script by typing:
   ```batch
   collect_info.bat

## Output structure

results/
├── systeminfo.txt
├── network_config.txt
├── tasklist.txt
├── netstat.txt
└── processes.txt
