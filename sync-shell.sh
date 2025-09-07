#!/usr/bin/env zsh

set -e

RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${RED}설정파일을 동기화 합니다${NC}\n"

echo -n "업무용 환경인가요? (y/N): "
read for_work
echo ""

ln -sf "$(pwd)"/.zprofile ~/.zprofile
echo ".zprofile"

ln -sf "$(pwd)"/.zshrc ~/.zshrc
echo ".zshrc"

ln -sf "$(pwd)"/.zshrc_init ~/.zshrc_init
echo ".zshrc_init"

ln -sf "$(pwd)"/.zshrc_alias ~/.zshrc_alias
echo ".zshrc_alias"

ln -sf "$(pwd)"/.zshrc_func ~/.zshrc_func
echo ".zshrc_func"

ln -sfn "$(pwd)"/.zsh-completions ~/.zsh-completions
rm -f ~/.zcompdump* || true
echo ".zsh-completions/"

if [[ $for_work == [yY] ]]; then
  ln -sf "$(pwd)"/.gitconfig_include ~/.gitconfig
  echo -e "${YELLOW}.gitconfig_include to .gitconfig${NC}"

  ln -sf "$(pwd)"/.gitconfig ~/.gitconfig_private
  echo -e "${YELLOW}.gitconfig to .gitconfig_private${NC}"
else
  [ -f ~/.gitconfig_private ] && rm ~/.gitconfig_private

  ln -sf "$(pwd)"/.gitconfig ~/.gitconfig
  echo -e "${YELLOW}.gitconfig${NC}"
fi

ln -sf "$(pwd)"/.gitignore_global ~/.gitignore_global
echo ".gitignore_global"

ln -sf "$(pwd)"/.vimrc ~/.vimrc
echo ".vimrc"

mkdir -p "$(bat --config-dir)" && ln -sf "$(pwd)"/.bat.conf "$(bat --config-file)"
echo ".bat.conf"

mkdir -p ~/.config/lazygit && ln -sf "$(pwd)"/.lazygit.config.yml ~/.config/lazygit/config.yml
echo ".lazygit.config.yml"

mkdir -p ~/.config/vale && ln -sf "$(pwd)"/.vale.ini ~/.config/vale/.vale.ini
cd ~/.config/vale && vale sync && cd -
echo ".vale.ini"

mkdir -p ~/.config/ghostty && ln -sf "$(pwd)"/ghostty.config ~/.config/ghostty/config
echo "ghostty.config"

mkdir -p ~/.config/mise && ln -sf "$(pwd)"/mise.config.toml ~/.config/mise/config.toml
echo "mise.config.toml"

ln -sf "$(pwd)"/.sqliterc ~/.sqliterc
echo ".sqliterc"

echo -e "\n${RED}완료${NC}"
