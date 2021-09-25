#!/usr/bin/env bash

RED='\033[0;31m'
NC='\033[0m'

cp -f .zprofile ~
echo ".zprofile 설정파일 복사"

cp -f .zshenv ~
echo ".zshenv 설정파일 복사"

cp -f .zshalias ~
echo ".zshalias 설정파일 복사"

cp -f .zshfunc ~
echo ".zshfunc 설정파일 복사"

echo -e "${RED}.zshrc 파일은 직접변경 필요${NC}"

cp -f .gitconfig ~
echo ".gitconfig 설정파일 복사"

cp -f .gitignore_global ~
echo ".gitignore_global 설정파일 복사"

cp -f .vimrc ~
echo ".vimrc 설정파일 복사"

if [[ $(uname) == Darwin && $(arch) == arm64 ]]; then
  cat .zprofile_darwin_arm64 >> ~/.zprofile
  echo "Apple Silicon 설정"
fi

echo "완료"
