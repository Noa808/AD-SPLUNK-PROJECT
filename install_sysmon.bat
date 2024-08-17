@echo off
REM Install Sysmon
"\\MGMT\Deployment\Sysmon\sysmon.exe" -accepteula -i "\\MGMT\Deployment\Config\sysmonconfig.xml"
