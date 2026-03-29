#!/bin/bash

# Color codes for formatted output
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
NC='\033[0m'

STUDENT_NAME="Ashmit"
SOFTWARE_CHOICE="Git"

clear

echo -e "${PURPLE}============================================================${NC}"
echo -e "${CYAN}         OPEN SOURCE SYSTEM IDENTITY REPORT                 ${NC}"
echo -e "${PURPLE}============================================================${NC}"
echo -e "${WHITE}Student: $STUDENT_NAME | Software Focus: $SOFTWARE_CHOICE${NC}"
echo ""

echo -e "${YELLOW}--- KERNEL INFORMATION ---${NC}"
echo -e "Kernel Version      : ${WHITE}$(uname -r)${NC}"
echo -e "Kernel Name         : $(uname -s)"
echo -e "Machine Architecture: $(uname -m)"
echo -e "Operating System    : $(uname -o)"
echo ""

echo -e "${YELLOW}--- DISTRIBUTION INFORMATION ---${NC}"
if [ -f /etc/os-release ]; then
    echo -e "Distribution        : ${WHITE}$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f2)${NC}"
fi
echo -e "Hostname            : $(hostname)"
echo -e "Current User        : $(whoami)"
echo -e "Home Directory      : $HOME"
echo ""

echo -e "${YELLOW}--- SYSTEM STATUS ---${NC}"
echo -e "System Uptime       : $(uptime -p | sed 's/up //')"
echo -e "System Load         : $(uptime | awk -F'load average:' '{print $2}')"
echo -e "Current Date/Time   : $(date '+%Y-%m-%d %H:%M:%S')"
echo ""

echo -e "${YELLOW}--- MEMORY INFORMATION ---${NC}"
echo -e "Total Memory        : $(free -h | grep Mem | awk '{print $2}')"
echo -e "Available Memory    : $(free -h | grep Mem | awk '{print $7}')"
echo ""

echo -e "${YELLOW}--- ADDITIONAL SYSTEM INFO ---${NC}"
echo -e "Shell Used          : $SHELL"
echo -e "CPU Model           : $(lscpu | grep 'Model name' | cut -d ':' -f2 | xargs)"
echo ""

echo -e "${YELLOW}--- KERNEL BUILD INFO ---${NC}"
echo -e "Build Date          : $(cat /proc/version | awk '{print $5, $6, $7, $8}')"
echo -e "GCC Version         : $(cat /proc/version | grep -o 'gcc version [0-9.]*' 2>/dev/null || echo 'Not available')"
echo ""

# Display license info to highlight open-source principles
echo -e "${YELLOW}--- OPEN SOURCE LICENSE ---${NC}"
echo -e "${WHITE}The Linux Kernel is licensed under GNU General Public License v2 (GPLv2)${NC}"
echo ""
echo "The Four Freedoms:"
echo "  1. Freedom to run the program for any purpose"
echo "  2. Freedom to study and modify the source code"
echo "  3. Freedom to redistribute copies"
echo "  4. Freedom to distribute modified versions"
echo ""

echo -e "${YELLOW}--- SOFTWARE CONTEXT ---${NC}"
echo -e "Chosen Software     : $SOFTWARE_CHOICE"
echo -e "This system environment supports open-source development using tools like $SOFTWARE_CHOICE"
echo ""

echo -e "${PURPLE}============================================================${NC}"