@echo off

REM Define variables for the paths
set SPLUNK_INSTALLER="\\MGMT\Deployment\Splunk\SplunkUniversalForwarder.msi"
set INSTALL_DIR="C:\Program Files\SplunkUniversalForwarder"
set SPLUNK_INDEXER="192.168.10.10:9997"

REM Install Splunk Universal Forwarder
msiexec /i %SPLUNK_INSTALLER% AGREETOLICENSE=Yes /quiet

REM Set Splunk to start at boot
sc config SplunkForwarder start= auto

REM Configure the forwarder to send data to the receiving indexer
"%INSTALL_DIR%\bin\splunk.exe" add forward-server %SPLUNK_INDEXER% -auth splunkadmin:splunkadmin

REM Copy the inputs.conf file to the local Splunk configuration directory
copy \\MGMT\Deployment\Config\inputs.conf "%INSTALL_DIR%\etc\system\local\" /Y

REM Start the Splunk Universal Forwarder service
net start SplunkForwarder
