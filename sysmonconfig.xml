@echo off
REM Detect if the system is 64-bit or 32-bit
if "%PROCESSOR_ARCHITECTURE%" == "x86" (
    \\MGMT\DeploymentShare\Sysmon.exe -accepteula -i \\MGMT\DeploymentShare\sysmonconfig.xml
) else (
    \\MGMT\DeploymentShare\Sysmon64.exe -accepteula -i \\MGMT\DeploymentShare\sysmonconfig.xml
)
