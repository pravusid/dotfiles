#!/usr/bin/env bash

set -e

RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${RED}패키지를 업데이트 합니다${NC}"

cd ~/.fzf/ && git pull
echo -e "${YELLOW}fzf 업데이트 완료${NC}"

cd ~/.zsh-async/ && git pull
echo -e "${YELLOW}zsh-async 업데이트 완료${NC}"

cd ~/.oh-my-zsh/ && git pull
echo -e "${YELLOW}oh-my-zsh 업데이트 완료${NC}"

cd ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/ && git pull
echo -e "${YELLOW}zsh-autosuggestions 업데이트 완료${NC}"

cd ~/.asdf/ && git fetch --tags && git checkout "$(git describe --abbrev=0 --tags)"
echo -e "${YELLOW}asdf 업데이트 완료${NC}"

curl -sS https://starship.rs/install.sh | sh
echo -e "${YELLOW}starship 업데이트 완료${NC}"

echo "완료"
