@echo off
set version=v%1
if %version%==v echo Please provide a version! & exit
python -m PyInstaller -F --distpath .\versions\%version% -n IPA_Keyboard_Client-win64-%version% .\IPA_Keyboard_Client_with_Robot.py
