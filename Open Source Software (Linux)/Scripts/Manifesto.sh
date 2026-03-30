#!/bin/bash
# Script 5: Kernel Manifesto Generator

PURPLE='\033[0;35m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
NC='\033[0m'

clear
echo -e "${PURPLE}============================================================${NC}"
echo -e "${CYAN}         KERNEL INSPIRED MANIFESTO GENERATOR                ${NC}"
echo -e "${PURPLE}============================================================${NC}"
echo ""

echo "Answer these questions to generate your open-source manifesto"
echo "inspired by the Linux Kernel community."
echo ""

read -p "1. What does 'open source' mean to you? " MEANING
read -p "2. What open-source tool do you rely on most? " TOOL
read -p "3. What would you build and share freely? " BUILD
read -p "4. One word to describe the open-source community: " COMMUNITY

DATE=$(date "+%B %d, %Y")
USER=$(whoami)
KERNEL=$(uname -r)
HOST=$(hostname)

OUTPUT_FILE="../docs/manifesto_${USER}_$(date +%Y%m%d).txt"

mkdir -p ../docs

clear
echo -e "${YELLOW}Generating your manifesto...${NC}"
sleep 1

cat > "$OUTPUT_FILE" << EOF
============================================================
              MY OPEN SOURCE MANIFESTO
         Inspired by the Linux Kernel Community
============================================================

Date: $DATE
Author: $USER
System: $HOST
Kernel: $KERNEL

--- MY OPEN SOURCE PHILOSOPHY ---

$MEANING

--- MY DEPENDENCE ON OPEN SOURCE ---

Every day, I rely on '$TOOL' and countless other open-source
tools. These exist because developers chose to share their
work freely, building on the contributions of others.

--- MY PLEDGE TO THE COMMUNITY ---

The open-source community is '$COMMUNITY'. Collaboration
creates better software than isolated development.

I commit to building and sharing '$BUILD' freely with the
world. I will contribute my code, my time, and my knowledge.

--- LESSONS FROM THE KERNEL COMMUNITY ---

From Linus Torvalds and thousands of kernel contributors:

1. "Release early, release often"
2. "Given enough eyeballs, all bugs are shallow"
3. "Talk is cheap. Show me the code"
4. "Be nice, don't be a jerk"

--- MY COMMITMENT ---

I pledge to:
• Use open-source software where possible
• Share my code and knowledge
• Help newcomers to open source
• Contribute back to projects I use

============================================================
Generated on: $DATE
============================================================
EOF

echo -e "${WHITE}✓ Manifesto saved to: $OUTPUT_FILE${NC}"
echo ""
echo -e "${CYAN}--- YOUR MANIFESTO ---${NC}"
cat "$OUTPUT_FILE"