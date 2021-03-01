# oh-my-zsh 기본 설정 생략

# ...

# oh-my-zsh plugins
plugins=(
  asdf
  command-not-found
  docker
  docker-compose
  fancy-ctrl-z
  git
  z
)

# ...

# User aliases
[ -f ~/.zshalias ] && source ~/.zshalias

# User functions
[ -f ~/.zshfunc ] && source ~/.zshfunc

# starship
eval "$(starship init zsh)"
