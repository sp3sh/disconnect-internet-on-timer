@echo off
cls
:start
REM Timer to toggle Ethernet interface status
timeout /t 70
REM Toggle Ethernet interface status
netsh interface set interface "Ethernet" admin=disable
timeout /t 1
netsh interface set interface "Ethernet" admin=enable
goto start
