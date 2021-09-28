# fnm for nodejs
PATH="$PATH:$HOME/.fnm"
eval "$(fnm env)"

# asdf
if [[ -f "$HOME/.asdf/shims" ]] then;
  PATH="$PATH:$HOME/.asdf/shims"
fi
