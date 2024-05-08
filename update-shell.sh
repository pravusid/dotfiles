#!/usr/bin/env bash

set -e

RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${RED}패키지를 업데이트 합니다${NC}\n"

cd ~/.zsh-defer/ && git pull
echo -e "${YELLOW}zsh-defer 업데이트 완료${NC}"

curl -sS https://starship.rs/install.sh | sh -s -- -b ~/.local/bin -y
echo -e "${YELLOW}starship 업데이트 완료${NC}"

cd ~/.fzf && git pull && ./install --all --no-update-rc
echo -e "${YELLOW}fzf 업데이트 완료${NC}"

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
echo -e "${YELLOW}zoxide 업데이트 완료${NC}"

mise self-update -y
echo -e "${YELLOW}mise 업데이트 완료${NC}"

echo -e "\n${RED}완료${NC}"
