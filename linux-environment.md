# 리눅스 환경설정

## X Window 환경확인

`echo $XDG_SESSION_TYPE`

## Repository 변경

### Manjaro

```sh
# 가까운 다섯곳
sudo pacman-mirrors --fasttrack 5
# 국가 직접지정
sudo pacman-mirrors --country South_Korea Japan Taiwan China Hong_Kong
# 초기화
sudo pacman-mirrors --country all

# 업데이트
sudo pacman -Syu
```

### Ubuntu

```sh
sudo cp /etc/apt/sources.list ~/sources.list.old
sudo sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
```

## 사용하는 패키지들

### 기본앱 변경

`sudo sed -i 's/<현재>/<변경후>/' /usr/share/applications/defaults.list`

### 일반

- gnome
  - gnome-tweak-tool: `sudo pacman -S gnome-tweaks`
  - gconf: `sudo pacman -S gconf`

- lm-sensors: `sudo pacman -S lm_sensors`

- tlp

  ```sh
  # BE
  sudo pacman -S tlp tlp-rdw
  # FE
  yay -S tlpui-git
  ```

- gnupg: `sudo pacman -S gnupg`

- stacer: `yay -S stacer`

- aria2: `sudo pacman -S aria2`

- fzf: `git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install`

- fd-find: `sudo pacman -S fd`

- ulauncher

  - `yay -S ulauncher`

    ```sh
    # Make sure no app is using ALT+SPACE.
    # Open ULauncher Preferences. Map keys to Alt+Super L (the order is important) and exit ULauncher.
    # Then, edit settings.json in home/user/.config/ulauncher and change Super L to space.
    # You should have sth like this: "hotkey-show-app": "<Alt>space". Save & launch ULauncher.
    ```

- Chrome: `yay -S google-chrome`

- remmina: `sudo pacman -S remmina`

- flameshot
  - `sudo pacman -S flameshot`
  - config: `flameshot config`
  - hotkey: 데스크톱 환경 단축키와 `flameshot gui` 연결

- peek: `sudo pacman -S peek`

- GIMP: `sudo pacman -S gimp`

- mpv: `sudo pacman -S mpv`

- Telegram Desktop: `sudo pacman -S telegram-desktop`

- Google Play Music Desktop Player: `yay -S gpmdp`

### 런타임

- Java: <https://adoptopenjdk.net/installation.html#linux-pkg>
  
  - Manjaro: `sudo pacman -S jdk8-openjdk`

  - Ubuntu

    ```sh
    # repository 등록
    wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
    sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/

    # 위의 명령어가 실행되지 않으면(command not found)
    sudo apt-get install -y software-properties-common

    # openjdk 설치: <adoptopenjdk-version-jvm>
    sudo apt-get install <adoptopenjdk-8-hotspot>
    ```

- NodeJS: <https://github.com/Schniz/fnm>

  ```sh
  curl -fsSL https://github.com/Schniz/fnm/raw/master/.ci/install.sh | bash

  # for help
  fnm
  ```

- golang: <https://github.com/golang/go/wiki/Ubuntu>

  - `sudo pacman -S go`

  - <https://golang.org/dl/>

    ```sh
    sudo tar -C /usr/local -xzf go[VERSION].linux-amd64.tar.gz
    # 환경변수 설정
    # export PATH="$PATH:/usr/local/go/bin"
    # 만약 기본경로를 사용하지 않는다면
    # export GOROOT="$HOME/go"
    # export PATH="$PATH:$GOROOT/bin"
    ```

- python

  - python3-pip: `curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && sudo python get-pip.py`

  - virtualenv: `sudo pip install virtualenv`

  - autoenv: `sudo pip install autoenv`

  - [pyenv](https://github.com/pyenv/pyenv): `git clone https://github.com/pyenv/pyenv.git ~/.pyenv`

### 개발툴

- git: `sudo pacman -S git`

- curl: `sudo pacman -S curl`

- jq: `sudo pacman -S jq`

- Visual Studio Code
  - 설치: `yay -S visual-studio-code-bin`
  - [background issue](https://github.com/microsoft/vscode/issues/85452)
    - Command Palette search for "Configure Runtime Arguments"
    - Set `disable-hardware-acceleration: true`
    - Restart

- IDEA Ultimate: `yay -S intellij-idea-ultimate-edition`

- Android Studio: `yay -S android-studio`

- lnav: `yay -S lnav`

- Slack: `yay -S slack-desktop`

- dbeaver: `sudo pacman -S dbeaver`

- insomnia: `yay -S insomnia`

- wireshark: `sudo pacman -S wireshark-qt`

- docker: `sudo pacman -S docker`

## SHELL

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
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  ```

- zsh spaceship theme: <https://github.com/denysdovhan/spaceship-prompt>

  ```sh
  # 다운로드
  git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

  # 해당위치에 심볼릭 링크 생성
  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

  # .zshrc에 적용
  ZSH_THEME="spaceship"
  ```

- oh-my-zsh 설정 (`.zshrc`)

  ```sh
  plugins=(
    command-not-found
    docker
    docker-compose
    fancy-ctrl-z
    git
    z
  )
  ```

## 폰트 설정

emoji font 설치

```sh
sudo pacman -S noto-fonts-emoji
```

noto-cjk conf 심볼릭 링크

```sh
sudo ln -s /etc/fonts/conf.avail/70-noto-cjk.conf /etc/fonts/conf.d/
```

### X11 fallback

`/etc/fonts/conf.d/51-local.conf`를 활성화하고 `/etc/fonts/local.conf` 파일에 다음 내용 생성

```xml
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
  <alias>
    <family>sans-serif</family>
    <prefer>
      <family>Noto Sans</family>
      <family>Noto Color Emoji</family>
      <family>Noto Emoji</family>
    </prefer>
    <default>
      <family>Noto Sans CJK KR</family>
    </default>
  </alias>
  <alias>
    <family>serif</family>
    <prefer>
      <family>Noto Serif</family>
      <family>Noto Color Emoji</family>
      <family>Noto Emoji</family>
    </prefer>
    <default>
      <family>Noto Serif CJK KR</family>
    </default>
  </alias>
  <alias>
    <family>monospace</family>
    <prefer>
      <family>Source Code Pro</family>
      <family>Noto Sans Mono</family>
      <family>Noto Color Emoji</family>
      <family>Noto Emoji</family>
    </prefer>
    <default>
      <family>DejaVu Sans Mono</family>
    </default>
  </alias>
</fontconfig>
```

### 개별 설정

`/etc/fonts/conf.d/65-nonlatin.conf`

```xml
<family>Noto Serif CJK KR</family> <!-- hangul (ko) -->
<family>Noto Sans CJK KR</family> <!-- hangul (ko) -->
<family>Noto Sans Mono CJK KR</family> <!-- hangul (ko)-->
```

`/etc/fonts/conf.d/60-latin.conf`

```xml
<family>Noto Serif</family>
<family>Noto Sans</family>
<family>Noto Sans Mono</family>
```

## gnome extesion

확장 설정: dconf-editor: `org > gnome > shell > extension`

### Dock 설정

### install shell

- `sudo pacman -S chrome-gnome-shell`

### list

- 설치
  - Dynamic Panel Transparency
  - Impatience
  - Lock Keys
  - Multi Monitors Add-On
  - No Topleft Hot Corner
  - Sensory Perception

- 만자로 기본
  - Arc menu
  - Auto Move Windows
  - Caffeine
  - Dash to Dock
  - KStatusNotifierItem/AppIndicator Support
  - Native Window Placement
  - OpenWeather
  - Status Area Horizontal Spacing
  - Places Status Indicator
  - Removable drive menu
  - User Themes
  - Workspace indicator

## 터미널 변경

`gsettings set org.gnome.desktop.default-applications.terminal exec {terminal-name}`

`sudo update-alternatives --config x-terminal-emulator`

### vim 다른 터미널 사용시 수정 (`/usr/share/applications/vim.desktop`)

```text
Exec=/usr/bin/tilix -e vim %F
Terminal=false
```

## 환경변수

### `.zprofile`

```sh
# set PATH so it includes user's private bin directories
export PATH="$PATH:$HOME/bin:$HOME/.local/bin"

# fnm node path fallback
export PATH="$PATH:$HOME/.fnm/aliases/default/bin"
```

### `.zshenv`

```sh
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
```

### `.zshrc`

```sh
# User aliases
[ -f ~/.zshalias ] && source ~/.zshalias

# User functions
[ -f ~/.zshfunc ] && source ~/.zshfunc
```

### `.zshalias` User aliases

```sh
alias l="ls"
alias la="ls -A"
alias ll="ls -AFlh"

alias -g H="| head"
alias -g T="| tail"
alias -g G="| grep"
alias -g L="| less"
alias -g M="| most"
alias -g NE="2> /dev/null"

alias lg="\ls -al | grep"
alias pg="\pgrep -fl"
alias cntf="\ls -1A | wc -l"
alias ssa="\ss -natp"
alias ssl="\ss -nltp"
alias tf="\tail -f"

alias converteol="find | xargs perl -pi -e 's/\r\n/\n/g'"
alias altjava="sudo update-alternatives --config java"
alias duc="du -hsx * 2> /dev/null | sort -rh"

alias aria="aria2c"
alias fzfpv="fzf --preview 'cat {} 2> /dev/null | head -500'"

alias python="python3"
alias pip="pip3"

alias npl="npm ls -g --depth=0"
alias npr="npm run"
alias jt="npx jest -t"
alias jw="npx jest --watch -t"
```

### `.zshfunc` User functions

```sh
getmpeg() {
  ffmpeg -i "$1" -c copy -bsf:a aac_adtstoasc "$2"
}

getportconn() {
  grep -v "rem_address" /proc/net/tcp  \
    | awk 'function hextodec(str,ret,n,i,k,c)  {
      ret = 0
      n = length(str)
      for (i = 1; i <= n; i++) {
        c = tolower(substr(str, i, 1))
        k = index("123456789abcdef", c)
        ret = ret * 16 + k
      }
      return ret
    } {
      x=hextodec(substr($2,index($2,":")-2,2));
      for (i=5; i>0; i-=2) x = x"."hextodec(substr($2,i,2))
    } {
      print x":"hextodec(substr($2,index($2,":")+1,4))
    }' \
    | sort | uniq -c | sort -rn
}

kp() {
  lsof -ti :$1 | xargs -r -I {} kill -9 {}
  echo "kill port $1"
}
```

## 한/영, 한자 키

### Manjaro & nimf

<https://github.com/hamonikr/nimf/wiki/Manjaro-build>

#### nimf 설치

```sh
sudo pacman -S binutils base-devel intltool qt4 libappindicator-gtk3 libhangul anthy librime m17n-lib m17n-db gtk-doc
yay -S nimf
```

#### nimf 설정

`~/.xprofile`

```sh
export GTK_IM_MODULE=nimf
export QT4_IM_MODULE="nimf"
export QT_IM_MODULE=nimf
export XMODIFIERS="@im=nimf"
```

nimf-settings 에서 환경 변수 설정 옵션을 켠다(ON)

gnome 데스크탑 환경의 경우 다음 실행

```sh
gsettings set org.gnome.settings-daemon.plugins.keyboard active false
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/IMModule':<'nimf'>}"
```

### Ubuntu & fcitx & xkb 설정

fcitx: `sudo apt install fcitx-hangul` 설치 후 `im-config`에서 기본 입력기 설정

- 한영 전환 팝업 삭제: `~/.config/fcitx/config` 파일 수정: `ShowInputWindowAfterTriggering=False`
- `;`키 충돌: 입력기 설정 → 부가기능 → QuickPhrase → 맨위 옵션을 없음으로 → 아래의 고급 설정 클릭 → 철자 힌트 보이지 않기 체크
- `ctrl`+`alt`+`h` 단축키 충돌: 입력기 설정 → 부가기능 → Keyboard Layout → 단어 힌트 전환 단축기 해제

#### 전체 설정 변경

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

#### 로컬 설정 변경

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
