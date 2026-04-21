#!/data/data/com.termux/files/usr/bin/bash

# පෙනුම ලස්සන කරන්න (Branding)
clear
echo -e "\e[1;31m######################################"
echo -e "\e[1;37m        SILENT CHEATZ PREMIUM         "
echo -e "\e[1;31m######################################\e[0m"
echo -e "\e[1;32m[*] Starting Lag Fix & Aim Smooth..."

# System Tweaks (No Root Required via ADB)
# සටහන: User කලින් ADB connect කරලා තියෙන්න ඕනේ.
adb shell settings put system pointer_speed 7
adb shell settings put global window_animation_scale 0
adb shell settings put global transition_animation_scale 0
adb shell settings put global animator_duration_scale 0
adb shell settings put global touch_exploration_enabled 0

# DPI (User ට ඕන විදියට වෙනස් කරගන්න පුළුවන්)
adb shell wm density 440

echo -e "\e[1;34m[*] Optimization Applied Successfully!"
echo -e "\e[1;33m[*] Join Our Channel for Updates."
