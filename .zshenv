function lazy_loader() {
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PATH:$PYENV_ROOT/bin"
    eval "$(pyenv init -)"

    export PATH="$PATH:$HOME/.fnm"
    eval "$(fnm env --multi)"

    export FZF_DEFAULT_COMMAND="fd --type f"
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
}

source ~/.zsh-async/async.zsh
async_start_worker zsh_async_worker -n
async_register_callback zsh_async_worker lazy_loader
async_job zsh_async_worker sleep 0

eval "$(starship init zsh)"
