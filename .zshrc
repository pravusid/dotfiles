# oh-my-zsh 기본 설정 생략

# ...

# oh-my-zsh plugins
plugins=(
  colored-man-pages
  command-not-found
  docker
  docker-compose
  fancy-ctrl-z
  git
  z
)

# ...

# init
[ -f ~/.zshrc_init ] && source ~/.zshrc_init

# User aliases
[ -f ~/.zshrc_alias ] && source ~/.zshrc_alias

# User functions
[ -f ~/.zshrc_func ] && source ~/.zshrc_func
