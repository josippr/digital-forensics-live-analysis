@echo off
echo Starting script

mkdir results

echo Started gathering system information:
systeminfo > results\systeminfo.txt
ipconfig /all > results\network_config.txt
tasklist > results\tasklist.txt
netstat -ano > results\netstat.txt
wmic process list full > results\processes.txt

echo Script executed!