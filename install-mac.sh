#!/bin/bash
# this script installs merobaja vst vst3 and AU plugin on mac os
echo "Do you like to install merobaja instrument AU plugin or Vst3? answer 1 for AU or 2 for Vst3"
read answer
if [[ $answer == 1 ]]; then
echo "installing mac audio plugin....."
   sudo cp -r "mac/merobaja.component"* "/Library/Audio/Plug-Ins/Components"
   sudo cp -r "mac/merobaja.instruments"* "/Library/Audio/Plug-Ins/Components"
   echo "Installed AU plugin! contact for license key!!"
if [[ $answer == 2 ]]; then
echo "Not available at moment....."
echo "good bye!!"
sleep 3
clear && printf '\e[3J'
fi
