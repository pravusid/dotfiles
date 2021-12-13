#!/usr/bin/env bash

RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${RED}설정파일을 동기화 합니다${NC}"

cp -f .zshrc ~
echo ".zshrc 설정파일 복사"

cp -f .zshrc_init ~
echo ".zshrc_init 설정파일 복사"

cp -f .zshrc_alias ~
echo ".zshrc_alias 설정파일 복사"

cp -f .zshrc_func ~
echo ".zshrc_func 설정파일 복사"

cp -f .gitconfig ~
echo ".gitconfig 설정파일 복사"

cp -f .gitignore_global ~
echo ".gitignore_global 설정파일 복사"

cp -f .vimrc ~
echo ".vimrc 설정파일 복사"

if [[ $(uname) == "Darwin" && $(arch) == "i386" ]]; then
  echo -e "${YELLOW}Apple x86 설정${NC}"
fi

if [[ $(uname) == "Darwin" && $(arch) == "arm64" ]]; then
  echo -e "$(cat .zshrc_init_darwin_arm64)\n\n$(cat ~/.zshrc_init)" > ~/.zshrc_init
  echo -e "${YELLOW}Apple Silicon 설정${NC}"
fi

echo "완료"
