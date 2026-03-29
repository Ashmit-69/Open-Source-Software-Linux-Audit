#!/bin/bash
# Script 5: Kernel Manifesto Generator

PURPLE='\033[0;35m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
NC='\033[0m'

clear
echo -e "${PURPLE}============================================================${NC}"
echo -e "${CYAN}         OPEN SOURCE MANIFESTO GENERATOR                    ${NC}"
echo -e "${PURPLE}============================================================${NC}"
echo ""

echo "Answer the following questions:"
echo ""

read -p "1. How would you describe open source in your own words? " MEANING
read -p "2. Which open-source tools do you use frequently? " TOOL
read -p "3. What kind of project would you like to create and share openly? " BUILD
read -p "Optional: In one word, how would you describe the open-source community? " COMMUNITY

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

Every day,I rely on '$TOOL' and countless other open-source
tools. These tools are possible because developers share their work openly, allowing others to learn from it, improve it, and build upon it.

--- MY PLEDGE TO THE COMMUNITY ---

I commit to building and sharing '$BUILD' openly for others to learn from and build upon. I will contribute my code, my time, and my knowledge.

EOF

if [ -n "$COMMUNITY" ]; then
cat >> "$OUTPUT_FILE" << EOF

--- MY VIEW OF THE COMMUNITY ---

The open-source community is '$COMMUNITY', built on collaboration and shared progress.
EOF
fi

cat >> "$OUTPUT_FILE" << EOF

--- LESSONS FROM THE KERNEL COMMUNITY ---

From Linus Torvalds and thousands of kernel contributors:

1. "Release early, release often" - Don't wait for perfection
2. "Given enough eyeballs, all bugs are shallow" - Trust the community
3. "Talk is cheap. Show me the code" - Let your work speak
4. "Be nice, don't be a jerk" - Community matters

--- MY COMMITMENT ---

I pledge to:
• Use open-source software where possible
• Share my code and knowledge
• Help newcomers to open source
• Contribute back to projects I use

I stand on the shoulders of giants - Torvalds, Stallman, and
thousands of unnamed contributors. I offer my shoulders to
those who come after me.

============================================================
Generated on: $DATE
============================================================
EOF

echo -e "${WHITE}✓ Manifesto saved to: $OUTPUT_FILE${NC}"
echo ""
echo -e "${CYAN}--- YOUR MANIFESTO ---${NC}"
cat "$OUTPUT_FILE"