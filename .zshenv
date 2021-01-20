function lazy_loader() {
    export PATH="$PATH:$HOME/.fnm"
    eval "$(fnm env)"

    export FZF_DEFAULT_COMMAND="fd --type f"
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
}

source ~/.zsh-async/async.zsh
async_start_worker zsh_async_worker -n
async_register_callback zsh_async_worker lazy_loader
async_job zsh_async_worker sleep 0

# yarn path
PATH="$PATH:$HOME/.yarn/bin"
# cargo home
PATH="$PATH:$HOME/.cargo/bin"

export PATH
