#!/bin/bash

version=v$1
if [ $version == v ]; then
    echo Please provide a version!
    exit
fi

if [ $XDG_SESSION_TYPE == x11 ]; then
    python -m PyInstaller -F --distpath ./versions/$version -n IPA_Keyboard_Client-x11-$version IPA_Keyboard_Client_with_Robot.py
    exit
fi

if [ $XDG_SESSION_TYPE == wayland ]; then
    python -m PyInstaller -F --distpath ./versions/$version -n IPA_Keyboard_Client-wayland-$version IPA_Keyboard_Client_with_Robot.py
    exit
fi

# else if it's an OSX system:
# python -m PyInstaller -F --distpath ./versions/$version -n IPA_Keyboard_Client-OSX-$version IPA_Keyboard_Client_with_Robot.py

echo This system isn't yet supported!
