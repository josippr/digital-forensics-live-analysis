@echo off
echo Starting script

for /f "tokens=2 delims==" %%I in ('"wmic os get localdatetime /value"') do set datetime=%%I
set year=%datetime:~0,4%
set month=%datetime:~4,2%
set day=%datetime:~6,2%
set hour=%datetime:~8,2%
set minute=%datetime:~10,2%
set results_folder=results_%day%-%month%-%year%_%hour%-%minute%

mkdir "%results_folder%"

echo Started gathering system information:
systeminfo > "%results_folder%\systeminfo.txt"
ipconfig /all > "%results_folder%\network_config.txt"
tasklist > "%results_folder%\tasklist.txt"
netstat -ano > "%results_folder%\netstat.txt"
wmic process list full > "%results_folder%\processes.txt"

echo Script executed! Results saved in folder "%results_folder%"