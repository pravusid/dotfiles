# oh-my-zsh 기본 설정 생략
# ...

# oh-my-zsh plugins
plugins=(
  command-not-found
  docker
  docker-compose
  fancy-ctrl-z
  git
  z
)

# User aliases
[ -f ~/.zshalias ] && source ~/.zshalias

# User functions
[ -f ~/.zshfunc ] && source ~/.zshfunc
