# 우분투 설정사항

## Repository 변경

```sh
sudo cp /etc/apt/sources.list ~/sources.list.old
sudo sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
```

## 우분투에서 사용하는 패키지들

- fcitx: `sudo apt-get install fcitx-hangul` 설치 후 `im-config`에서 기본 입력기 설정

  ```text
  한영 전환 팝업 삭제: ~/.config/fcitx/config 파일 수정
  ShowInputWindowAfterTriggering=False
  ```

- gnome-tweak-tool

- tilix: `gsettings set org.gnome.desktop.default-applications.terminal exec tilix`

- lm-sensors

- imwheel

- tlp

  ```sh
  sudo add-apt-repository ppa:linrunner/tlp
  sudo apt install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms
  ```
  
- git

- curl

- zsh

  ```sh
  sudo apt-get install zsh
  chsh -s /usr/bin/zsh
  ```
  
- oh-my-zsh

  ```sh
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
  ```
  
- vim: 다른 터미널 사용시 수정 (`/usr/share/applications/vim.desktop`)

  ```text
  Exec=/usr/bin/tilix -e vim %F
  Terminal=false
  ```

- GIMP

- Google Play Music Desktop Player : <https://www.googleplaymusicdesktopplayer.com/>

- VLC

- Java

  - Oracle Java
  
    ```sh
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt-get update
    sudo apt-get install oracle-java8-installer
    ```
    
  - Open JDK
  
    ```sh
    sudo apt install openjdk-8-jdk
    ```
    
- NodeJS

  ```sh
  curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
  sudo apt update
  sudo apt-get install -y nodejs
  ```
  
- yarn

  ```sh
  sudo npm install -g yarnpkg
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt update
  sudo apt install yarn
  ```
  
- firefox aurora

  ```sh
  sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora
  sudo apt update
  ```
  
- python3-pip

  - `pip install virtualenv`
  
  - `pip install autoenv`

- pyenv

  ```sh
  git clone https://github.com/pyenv/pyenv.git ~/.pyenv

  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
  echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
  echo 'eval "$(pyenv init -)"' >> ~/.zshrc
  ```

- bleachbit

- Insomnia

  ```sh
  # Add to sources
  echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
      | sudo tee -a /etc/apt/sources.list.d/insomnia.list

  # Add public key used to verify code signature
  wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
      | sudo apt-key add -

  # Refresh repository sources and install Insomnia
  sudo apt update
  sudo apt-get install insomnia
  ```

## 테마

- oh-my-zsh spaceship theme: `https://github.com/denysdovhan/spaceship-prompt`

  ```text
  # .zshrc에 적용
  ZSH_THEME="spaceship"
  # source "/home/idpravus/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
  ```

- materia theme: `sudo apt install materia-gtk-theme`

- numix theme

  ```sh
  sudo add-apt-repository ppa:numix/ppa
  sudo apt-get update
  sudo apt-get install numix-gtk-theme numix-icon-theme-circle
  ```
  
- paper

  ```sh
  sudo add-apt-repository ppa:snwh/pulp
  sudo apt-get update
  sudo apt-get install paper-icon-theme
  sudo apt-get install paper-cursor-theme
  sudo apt-get install paper-gtk-theme
  ```

### Noto Sans 우선순위 설정

`/etc/fonts/conf.d/64-language-selector-prefer.conf` 파일수정

## Ubuntu gnome extesion

### install shell

`sudo apt-get install chrome-gnome-shell`

### list

- Applications Menu

- Caffeine

- Dash to Panel

- Dynamic Panel Transparency

- Impatience

- Places Status Indicator

- Sensory Perception

- Status Area Horizontal Spacing

- Ubuntu AppIndicators

- User Themes
