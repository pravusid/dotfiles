# dotfiles

> my system configurations (dotfiles & instructions)

## interactive shell

- [Homebrew](./macos/homebrew/README.md)

- zsh-defer

  ```sh
  git clone https://github.com/romkatv/zsh-defer.git ~/.zsh-defer
  ```

- oh-my-zsh

  ```sh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # plugins
  git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins $ZSH_CUSTOM/plugins/autoupdate
  git clone https://github.com/jasonmccreary/git-trim.git $ZSH_CUSTOM/plugins/git-trim
  ```

- gh-cli

  ```sh
  gh extension install dlvhdr/gh-dash
  gh extension install nektos/gh-act
  ```

## sync dotfiles

```sh
./sync-shell.sh
```

### .zprofile

- [`.zprofile`](./.zprofile)

### zshrc

- [`.zshrc`](./.zshrc)
- [`.zshrc_init`](./.zshrc_init)
- [`.zshrc_history`](./.zshrc_history)
- [`.zshrc_alias`](./.zshrc_alias)
- [`.zshrc_func`](./.zshrc_func)

> <https://github.com/pravusid/TIL/blob/main/Linux/oh-my-zsh-alias.md>

### gitconfig

- [`.gitconfig`](./.gitconfig)
- [`.gitconfig_private`](./.gitconfig_private)
- [`.gitignore_global`](./.gitignore_global)

> <https://github.com/pravusid/TIL/blob/main/Git/git-config.md>

### vimrc

- [`.vimrc`](./.vimrc)

## Troubleshooting

### zsh compinit 오류

> zsh compinit: insecure directories, run compaudit for list.
> Ignore insecure directories and continue [y] or abort compinit [n]

소유권 변경으로 오류 해결

<https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/compfix.zsh>

```sh
compaudit | xargs chmod g-w
```
