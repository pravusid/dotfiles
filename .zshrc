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

function lazy_loader() {
  export FZF_DEFAULT_COMMAND="fd --type f"
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

  source ~/.config/broot/launcher/bash/br
}

source ~/.zsh-async/async.zsh
async_start_worker zsh_async_worker -n
async_register_callback zsh_async_worker lazy_loader
async_job zsh_async_worker sleep 0
