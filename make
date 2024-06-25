#!/bin/bash

echo This doesn't do anything yet; it's just for planning

version=v$1
# if $version==v echo Please provide a version! & exit

# if it's an X11 system:
# python -m PyInstaller -F --distpath ./versions/$version -n IPA_Keyboard_Client-X11-$version IPA_Keyboard_Client_with_Robot.py

# else if it's an OSX system:
# python -m PyInstaller -F --distpath ./versions/$version -n IPA_Keyboard_Client-OSX-$version IPA_Keyboard_Client_with_Robot.py

# else:
# echo This system isn't yet supported
