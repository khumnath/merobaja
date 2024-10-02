#!/bin/bash
# this script installs merobaja vst vst3 and AU plugin on mac os
function askYesNo {
        QUESTION=$1
        DEFAULT=$2
        if [ "$DEFAULT" = true ]; then
                OPTIONS="[Y/n]"
                DEFAULT="y"
            else
                OPTIONS="[y/N]"
                DEFAULT="n"
        fi
        read -p "$QUESTION $OPTIONS " -n 1 -s -r INPUT
        INPUT=${INPUT:-${DEFAULT}}
        echo ${INPUT}
        if [[ "$INPUT" =~ ^[yY]$ ]]; then
            ANSWER=true
        else
            ANSWER=false
        fi
}

askYesNo "Do you like to uninstall merobaja instrument plugin from your system?" true
DOIT=$ANSWER

if [ "$DOIT" = true ]; then
  echo "removing installed files ......."
   sudo rm -rf  /Library/Audio/Plug-Ins/Components/merobaja.component
   sudo rm -rf  /Library/Audio/Plug-Ins/Components/merobaja.instruments
   sudo rm -rf /Library/Audio/Plug-Ins/VST/merobaja.vst3
   sudo rm -rf /Library/Audio/Plug-Ins/VST/merobaja.instruments
echo "plugin uninstalled!! have a nice day!!" 
fi