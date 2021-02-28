@echo off
cls
:start
REM Timer to start first Disconnect
timeout /t 70
echo Disconnecting
REM Disconnect LAN
netsh interface set interface "Ethernet" disabled
REM Timer to reconnect
timeout /t 1
echo Connecting
REM Connect to LAN
netsh interface set interface "Ethernet" enabled
REM Loop to start until stopped
goto start
REM netsh interface show interface in CMD prompt will show you what your interface name is
REM Just replaced "Ethernet" with "Wi-Fi" or what ever yours is called