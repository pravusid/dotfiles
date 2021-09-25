#!/usr/bin/env bash

RED='\033[0;31m'
NC='\033[0m'

cp -f .zshenv ~
echo ".zshenv 설정파일 복사"

echo -e "${RED}.zshrc 파일은 직접변경 필요${NC}"

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

if [[ $(uname) == Darwin && $(arch) == arm64 ]]; then
  echo -e "$(cat .zshenv_darwin_arm64)\n\n$(cat ~/.zshenv)" > ~/.zshenv
  echo "Apple Silicon 설정"
fi

echo "완료"
