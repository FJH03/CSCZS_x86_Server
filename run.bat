@echo off
cls
echo Protecting dedicated_launcher from crashes...
echo If you want to close dedicated_launcher and this script, close the dedicated_launcher window and type Y depending on your language followed by Enter.
title dedicated_launcher Watchdog
:dedicated_launcher
echo (%time%) dedicated_launcher started.
start /wait dedicated_launcher.exe /high -insecure -maxplayers 24 -game cstrike -console -port 27015 +map de_dust2
echo (%time%) WARNING: dedicated_launcher closed or crashed, restarting.
goto dedicated_launcher
