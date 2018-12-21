# 우분투 설정사항

## Repository 변경

```sh
sudo cp /etc/apt/sources.list ~/sources.list.old
sudo sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
```

## 한/영, 한자 키

### 전체 설정 변경

xkb 설정 디렉토리로 간다

```sh
cd /usr/share/X11/xkb/symbols/
```

한/영 Alt_R 매핑을 수정한다

```sh
sudo vim altwin
```

파일을 열어 meta_alt의 `Alt_R, Meta_R` 부분을 `Hangul`로 수정한다

```sh
// Meta is mapped to second level of Alt keys.
partial modifier_keys
xkb_symbols "meta_alt" {
    key <LALT> { [ Alt_L, Meta_L ] };
    key <RALT> { type[Group1] = "TWO_LEVEL",
                 symbols[Group1] = [ Hangul ] };
    modifier_map Mod1 { Alt_L, Alt_R, Meta_L, Meta_R };
//  modifier_map Mod4 {};
};
```

한자 Ctrl_R 매핑을 수정한다

```sh
sudo vim pc
```

파일을 열어 RCTL의 `Control_R` 부분을 `Hangul_Hanja`로 수정한다

```sh
key <RCTL> {        [ Hangul_Hanja          ]       };
```

### 로컬 설정 변경

> Ubuntu Tweak > 키보드와 마우스 > 추가 배치 옵션 > 한국어 한/영, 한자 키 설정과 동일하며 Fcitx 시작/재시작과 함께 초기화 되는 문제점도 동일함

xkb 로컬 설정을 위한 디렉토리 생성

```sh
mkdir -p ~/.xkb/symbols
mkdir -p ~/.xkb/keymap
```
xkb 설정 복사

```sh
setxkbmap -print > ~/.xkb/keymap/hangul.xkb
```

xkb 로컬 설정 변경

```text
xkb_keymap {
    xkb_keycodes  { include "evdev+aliases(qwerty)" };
    xkb_types     { include "complete"      };
    xkb_compat    { include "complete"      };
    xkb_symbols   {
        include "pc+us+kr(kr104):2+inet(evdev)+terminate(ctrl_alt_bksp)+kr(ralt_hangul)+kr(rctrl_hanja)"
    };
    xkb_geometry  { include "pc(pc105)"     };
};
```

xkb 로컬 설정 적용 (`~/.xinitrc` 파일)

```sh
xkbcomp -I$HOME/.xkb ~/.xkb/keymap/hangul.xkb $DISPLAY
```

## 우분투에서 사용하는 패키지들

- fcitx

  - `sudo apt-get install fcitx-hangul` 설치 후 `im-config`에서 기본 입력기 설정

  ```text
  한영 전환 팝업 삭제: ~/.config/fcitx/config 파일 수정
  ShowInputWindowAfterTriggering=False
  ```

  - `ctrl` + `alt` + `h` 단축키 충돌: 입력기 설정 → 부가기능 → Keyboard Layout → 단어 힌트 전환 단축기 해제

- gnome-tweak-tool

- lm-sensors

- imwheel

- tlp

  ```sh
  sudo add-apt-repository ppa:linrunner/tlp
  sudo apt install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms
  ```
  
- git

- curl

- vim-gtk: 기본 에디터 변경 `sudo sed -i 's/gedit/vim/' /usr/share/applications/defaults.list`

- GIMP

- Google Play Music Desktop Player: <https://www.googleplaymusicdesktopplayer.com/>

- VLC

- Java

  - Oracle Java
  
    ```sh
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt-get install oracle-java8-installer
    ```
    
  - Open JDK
  
    ```sh
    sudo apt install openjdk-8-jdk
    sudo apt install openjdk-11-jdk
    ```
    
- NodeJS

  ```sh
  curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
  sudo apt-get install -y nodejs
  ```
  
- yarn

  ```sh
  sudo npm install -g yarnpkg
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt install yarn
  ```
  
- firefox aurora

  ```sh
  sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora
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
  sudo apt-get install insomnia
  ```

- golang: <https://golang.org/dl/>

  ```sh
  sudo tar -C /usr/local -xzf go[VERSION].linux-amd64.tar.gz
  # 환경변수 설정
  # export PATH=$PATH:/usr/local/go/bin
  # 만약 기본경로를 사용하지 않는다면
  # export GOROOT=$HOME/go
  # export PATH=$PATH:$GOROOT/bin
  ```

## SHELL

- zsh

  ```sh
  sudo apt-get install zsh
  chsh -s /usr/bin/zsh
  ```

- oh-my-zsh

  ```sh
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
  ```

- oh-my-zsh spaceship theme: <https://github.com/denysdovhan/spaceship-prompt>

  ```sh
  # 해당위치에 심볼릭 링크 생성 "/home/idpravus/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
  
  # .zshrc에 적용
  ZSH_THEME="spaceship"
  ```

- oh-my-zsh 설정 (`.zshrc`)

  ```sh
  plugins=(
    autojump
    command-not-found
    docker
    git
  )

  # Run plugins
  . /usr/share/autojump/autojump.sh
  ```

- autojump(<https://github.com/wting/autojump>) 설치: `sudo apt install autojump`

## 테마

- materia theme: `sudo apt install materia-gtk-theme`

- paper

  ```sh
  sudo add-apt-repository ppa:snwh/pulp
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

- Caffeine

- Dash to Dock: Ubuntu Dock 제거 (충돌방지) = `sudo apt purge gnome-shell-extension-ubuntu-dock`

- Dynamic Panel Transparency

- Impatience

- Lock Keys

- Night Light Slider

- No Topleft Hot Corner

- Places Status Indicator

- Sensory Perception

- Status Area Horizontal Spacing

- Ubuntu AppIndicators

- User Themes

## 터미널 변경

`gsettings set org.gnome.desktop.default-applications.terminal exec {terminal-name}`

`sudo update-alternatives --config x-terminal-emulator`

### vim 다른 터미널 사용시 수정 (`/usr/share/applications/vim.desktop`)

```text
Exec=/usr/bin/tilix -e vim %F
Terminal=false
```

## 환경변수

### `.profile`

```sh
# set PATH so it includes user's private bin directories
export PYENV_ROOT="$HOME/.pyenv"
export GOROOT="/usr/local/go"
export PATH="$HOME/bin:$HOME/.local/bin:$YARN_GLOBAL/bin:$PYENV_ROOT/bin:$GOROOT/bin:$PATH"
```

### `.zshrc` or `.bashrc`

```sh
alias converteol="find | xargs perl -pi -e 's/\r\n/\n/g'"
alias altjava="sudo update-alternatives --config java"

alias python="python3"
alias pip="pip3"
eval "$(pyenv init -)"
```
