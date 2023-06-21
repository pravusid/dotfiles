# System Configurations

## prerequisite

- [Linux](./linux/applications.md#cli)

- [macOS](./macos/README.md#homebrew)

- 공통

  - fzf

    ```sh
    # install
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
    # upgrade
    cd ~/.fzf && git pull && ./install
    ```

## terminal

- [Linux](./linux/terminal.md)

- [macOS](./macos/README.md#iterm2)

## shell

- zsh-defer

  ```sh
  git clone https://github.com/romkatv/zsh-defer.git ~/.zsh-defer
  ```

- oh-my-zsh

  ```sh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # plugins
  git clone https://github.com/z-shell/F-Sy-H.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/F-Sy-H
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-z
  ```

- starship

  ```sh
  curl -sS https://starship.rs/install.sh | sh
  ```

### dotfiles

#### zsh

- [`.zshrc`](./.zshrc)
- [`.zshrc_init`](./.zshrc_init)
- [`.zshrc_alias`](./.zshrc_alias)
- [`.zshrc_func`](./.zshrc_func)

> <https://github.com/pravusid/TIL/blob/main/Linux/oh-my-zsh-alias.md>

#### git

- [`.gitconfig`](./.gitconfig)
- [`.gitignore_global`](./.gitignore_global)

> <https://github.com/pravusid/TIL/blob/main/Git/git-config.md>

## version manager

### asdf

```sh
# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
chmod +x asdf.sh

# for help
asdf

# for update
asdf update

# add plugin
asdf plugin add <name> [git-url]
# update plugin
asdf plugin update --all

# for me
asdf plugin add go https://github.com/kennyp/asdf-golang
asdf plugin add python https://github.com/danhper/asdf-python
asdf plugin add rust https://github.com/code-lever/asdf-rust.git
```

### fnm

```sh
# fnm
curl -fsSL https://fnm.vercel.app/install | bash

# for update
curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell

# for help
fnm

# global cli
npm i -g npm-check-updates npm pnpm yarn
```

## vim

[`.vimrc`](./.vimrc)

```sh
# vim-plug with curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# vim-plug with wget
mkdir -p ~/.vim/autoload/
cd ~/.vim/autoload/
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

vim-plug 설치: `.vimrc` 수정 후

```vim
:source %
:PlugInstall
```

만약 플러그인 설치가 제대로 되지 않았다면: `:PlugUpdate`
