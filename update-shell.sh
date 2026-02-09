#!/usr/bin/env zsh

set -e

RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${RED}패키지를 업데이트 합니다${NC}\n"

source .zshrc
ZSH_CUSTOM_AUTOUPDATE_NUM_WORKERS=8 upgrade_oh_my_zsh_all
echo -e "${YELLOW}oh-my-zsh 업데이트 완료${NC}"

cd ~/.zsh-defer/ && git pull
echo -e "${YELLOW}zsh-defer 업데이트 완료${NC}"

echo -e "\n${RED}완료${NC}"
