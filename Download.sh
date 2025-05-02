#!/data/data/com.termux/files/usr/bin/bash

clear

# Colored output functions
bold=$(tput bold)
normal=$(tput sgr0)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
red=$(tput setaf 1)

echo -e "\n${red}"
echo "  ██████╗██╗   ██╗██████╗ ███████╗██████╗ "
echo " ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗"
echo " ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝"
echo " ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗"
echo " ╚██████╗   ██║   ██████╔╝███████╗██║  ██║"
echo "  ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝"

echo " ███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ ███████╗"
echo " ██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗██╔════╝"
echo " ███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝███████╗"
echo " ╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗╚════██║"
echo " ███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║███████║"
echo " ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚══════╝"

echo -e "\n${blue}"
echo " ██╗   ██╗████████╗              ██╗   ██╗██╗██████╗ ███████╗ ██████╗ "
echo " ╚██╗ ██╔╝╚══██╔══╝              ██║   ██║██║██╔══██╗██╔════╝██╔═══██╗"
echo "  ╚████╔╝    ██║       █████╗    ██║   ██║██║██║  ██║█████╗  ██║   ██║"
echo "   ╚██╔╝     ██║       ╚════╝    ╚██╗ ██╔╝██║██║  ██║██╔══╝  ██║   ██║"
echo "    ██║      ██║                  ╚████╔╝ ██║██████╔╝███████╗╚██████╔╝"
echo "    ╚═╝      ╚═╝                   ╚═══╝  ╚═╝╚═════╝ ╚══════╝ ╚═════╝ "

echo " ██████╗  ██████╗ ██╗    ██╗███╗   ██╗██╗      ██████╗  █████╗ ██████╗ ███████╗██████╗ "
echo " ██╔══██╗██╔═══██╗██║    ██║████╗  ██║██║     ██╔═══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗"
echo " ██║  ██║██║   ██║██║ █╗ ██║██╔██╗ ██║██║     ██║   ██║███████║██║  ██║█████╗  ██████╔╝"
echo " ██║  ██║██║   ██║██║███╗██║██║╚██╗██║██║     ██║   ██║██╔══██║██║  ██║██╔══╝  ██╔══██╗"
echo " ██████╔╝╚██████╔╝╚███╔███╔╝██║ ╚████║███████╗╚██████╔╝██║  ██║██████╔╝███████╗██║  ██║"
echo " ╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝"

echo -e "\n${green}                                > DEVALOPER CYBER BLACK LION! <<${NC}"

# Intro
echo "${blue}${bold}=== YouTube Video Downloader using yt-dlp ===${normal}"

# User input - Video URL
read -p "${yellow}Enter YouTube video URL: ${normal}" URL

# Show available formats
echo -e "\n${green}Fetching available video formats...${normal}"
yt-dlp -F "$URL"

# User input - Format code
echo -e "\n${yellow}Example format codes: 18 (360p), 22 (720p), 137+140 (1080p video+audio)${normal}"
read -p "${yellow}Enter your desired format code: ${normal}" FORMAT

# Confirm selection
echo -e "\n${green}Downloading selected format ($FORMAT)...${normal}"
yt-dlp -f "$FORMAT" "$URL"

# Done message
echo -e "\n${blue}${bold}Download complete!${normal}"

