#!/usr/bin/env bash

set -e

RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${RED}패키지를 업데이트 합니다${NC}"

cd ~/.fzf && git pull && ./install
echo -e "${YELLOW}fzf 업데이트 완료${NC}"

cd ~/.zsh-defer/ && git pull
echo -e "${YELLOW}zsh-defer 업데이트 완료${NC}"

curl -sS https://starship.rs/install.sh | sh
echo -e "${YELLOW}starship 업데이트 완료${NC}"

asdf update
echo -e "${YELLOW}asdf 업데이트 완료${NC}"

echo "완료"
