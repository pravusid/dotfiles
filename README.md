# system configurations

## SHELL

`sudo pacman -S zsh`

- zsh

  ```sh
  chsh -s /usr/bin/zsh
  ```

- zsh-async

  - `git clone https://github.com/mafredri/zsh-async.git ~/.zsh-async`

  - `.zshrc`

    ```sh
    source ~/.zsh-async/async.zsh
    ```

- oh-my-zsh

  ```sh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

- starship theme: <https://starship.rs/>

  ```sh
  curl -fsSL https://starship.rs/install.sh | bash
  echo 'eval "$(starship init zsh)"' >> .zshenv
  ```

- ~~zsh spaceship theme~~: <https://github.com/denysdovhan/spaceship-prompt>

  ```sh
  # 다운로드
  git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

  # 해당위치에 심볼릭 링크 생성
  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

  # .zshrc에 적용
  ZSH_THEME="spaceship"
  ```

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
```

### fnm

```sh
# fnm
curl -fsSL https://fnm.vercel.app/install | bash

# for update
curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell

# for help
fnm
```

## vim

```sh
# linux
sudo pacman -S vim
# macOS
brew install vim

# with curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# with wget
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
