#!/data/data/com.termux/files/usr/bin/bash

# --- COLORS ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
WHITE='\033[0;37m'
NC='\033[0m' # No Color

# --- LOGIN SYSTEM ---
clear
echo -e "${RED}###############################################"
echo -e "${WHITE}          SILENT CHEATZ x SIBOK STORE         "
echo -e "${RED}###############################################${NC}"
echo ""
read -p "ENTER YOUR LICENSE KEY: " key

# මෙතන 'SILENT2026' වෙනුවට ඔයාට ඕන Key එකක් දාන්න පුළුවන්
if [ "$key" == "SILENT2026" ]; then
    echo -e "${GREEN}[+] Access Granted! Initializing...${NC}"
    sleep 2
else
    echo -e "${RED}[!] Invalid Key. Contact Admin to Buy!${NC}"
    exit 1
fi

# --- DEPENDENCIES CHECK ---
clear
echo -e "${BLUE}[*] Checking System Requirements...${NC}"
if ! command -v adb &> /dev/null; then
    echo -e "${YELLOW}[!] Installing ADB Tools...${NC}"
    pkg install android-tools -y
fi

# --- OPTIMIZATION STARTS ---
clear
echo -e "${RED}    ____  ____  __    _______   _________ "
echo -e "   / __ \/ __ \/ /   / ____/ | / /_  __/  "
echo -e "  / /_/ / /_/ / /   / __/ /  |/ / / /     "
echo -e " / ____/ _, _/ /___/ /___/ /|  / / /      "
echo -e "/_/   /_/ |_/_____/_____/_/ |_/ /_/       ${NC}"
echo ""
echo -e "${YELLOW}>>> OPTIMIZING FREE FIRE PERFORMANCE <<<${NC}"
echo ""

# 1. Aim Smooth & Touch Sensitivity
echo -e "${WHITE}[1/4] Enhancing Touch & Aim Sensitivity...${NC}"
adb shell settings put system pointer_speed 7
adb shell settings put system touch_exploration_enabled 0
adb shell content insert --uri content://settings/system --bind name:s:touch.pressure.scale --bind value:s:0.001
# DPI පොඩ්ඩක් වැඩි කිරීම (Aim එක smooth වෙන්න)
adb shell wm density 440

# 2. Lag Fix & RAM Management
echo -e "${WHITE}[2/4] Clearing Background & Boosting RAM...${NC}"
adb shell settings put global window_animation_scale 0
adb shell settings put global transition_animation_scale 0
adb shell settings put global animator_duration_scale 0
adb shell settings put global max_cached_processes 2
adb shell am kill-all

# 3. Performance Mode
echo -e "${WHITE}[3/4] Forcing High Performance Mode...${NC}"
adb shell settings put global low_power 0
adb shell settings put global power_manager_constants "no_light_idle=true"

# 4. Internet Ping Stabilizer
echo -e "${WHITE}[4/4] Optimizing Network for Low Ping...${NC}"
adb shell settings put global tcp_default_init_rwnd 10

echo ""
echo -e "${GREEN}###############################################"
echo -e "      DONE! FREE FIRE IS NOW OPTIMIZED        "
echo -e "       PLEASE RESTART THE GAME TO APPLY       "
echo -e "###############################################${NC}"
echo -e "${YELLOW}SUBSCRIBE: SIBOK x SACHI OPTIMIZE STORE${NC}"
