@echo off
REM Install Splunk Universal Forwarder
msiexec /i \\MGMT\DeploymentShare\splunkforwarder-9.3.0-51ccf43db5bd-x64-release.msi /quiet

REM Start Splunk Universal Forwarder
"C:\Program Files\SplunkUniversalForwarder\bin\splunk.exe" start
