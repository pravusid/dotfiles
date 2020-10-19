# 사용하는 패키지들

## 기본앱 변경

`sudo sed -i 's/<현재>/<변경후>/' /usr/share/applications/defaults.list`

## 일반

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

- tldr: `sudo pacman -S tldr`

- xclip: `sudo pacman -S xclip`

- aria2: `sudo pacman -S aria2`

- mitmproxy: `sudo pacman -S mitmproxy`

- fzf: `git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install`

- fd-find: `sudo pacman -S fd`

- bat: `sudo pacman -S bat`

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

- Notion: `yay -S notion-app`

- VeraCrypt: `sudo pacman -S veracrypt`

## 런타임/컴파일러

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

## 개발툴

- git: `sudo pacman -S git`

- curl: `sudo pacman -S curl`

- jq: `sudo pacman -S jq`

- Visual Studio Code
  - 설치: `yay -S visual-studio-code-bin`
  - [background issue](https://github.com/microsoft/vscode/issues/85452)
    - Command Palette search for "Configure Runtime Arguments"
    - Set `disable-hardware-acceleration: true`
    - Restart

- IDEA Ultimate: `yay -S intellij-idea-ultimate-edition intellij-idea-ultimate-edition-jre`

- Android Studio: `yay -S android-studio`

- lnav: `yay -S lnav`

- Slack: `yay -S slack-desktop`

- dbeaver: `sudo pacman -S dbeaver`

- insomnia: `yay -S insomnia-designer`

- wireshark: `sudo pacman -S wireshark-qt`

- docker: `sudo pacman -S docker`

- shellcheck: `sudo pacman -S shellcheck`

- tokei: `sudo pacman -S tokei`
