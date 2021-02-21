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

  - ThinkPad Battery (레거시 모듈 사용 해제)

    - `TPACPI_ENABLE = 0`
    - `TPSMAPI_ENABLE = 0`

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
    # in X11
    # Make sure no app is using ALT+SPACE.
    # Open ULauncher Preferences. Map keys to Alt+Super L (the order is important) and exit ULauncher.
    # Then, edit settings.json in home/user/.config/ulauncher and change Super L to space.
    # You should have sth like this: "hotkey-show-app": "<Alt>space". Save & launch ULauncher.

    # in Wayland
    # Install package wmctrl (needed to activate app focus)
    # Open Ulauncher Preferences and set hotkey to something you'll never use
    # Open OS Settings > Devices > Keyboard > Add Hotkey > Scroll all the way down > Click +
    # In Command enter ulauncher-toggle, set name and shortcut, then click Add
    ```

  - 버전관리자(asdf, pyenv)에서 python global 설정한 경우 빌드 실패할 수 있음

- Chromium: `sudo pacman -S chromium`

- Chrome: `yay -S google-chrome`

- remmina: `sudo pacman -S remmina`

- flameshot: `sudo pacman -S flameshot`

- peek: `sudo pacman -S peek`

- GIMP: `sudo pacman -S gimp`

- vlc: `sudo pacman -S vlc`

- Telegram Desktop: `sudo pacman -S telegram-desktop`

- Notion: `yay -S notion-app`

- zettlr: `yay -S zettlr-bin`

- VeraCrypt: `sudo pacman -S veracrypt`

- dropbox: `yay -S dropbox`

## 런타임/컴파일러

- Java

  - Manjaro: `sudo pacman -S jdk11-openjdk`
  - RPM|DEB: <https://adoptopenjdk.net/installation.html#linux-pkg>

- NodeJS

  - runtime: <https://nodejs.org/en/download/package-manager/>
  - yarn: `sudo pacman -S yarn`

- golang: <https://golang.org/doc/install>

- python

  - python3-pip: `curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && sudo python get-pip.py`

## 개발툴

- git: `sudo pacman -S git`

- git-delta: `yay -S git-delta-bin`

- curl: `sudo pacman -S curl`

- jq: `sudo pacman -S jq`

- Visual Studio Code

  - 설치: `yay -S visual-studio-code-bin`

  - [background issue](https://github.com/microsoft/vscode/issues/85452)
    - Command Palette search for "Configure Runtime Arguments"
    - Set `disable-hardware-acceleration: true`
    - Restart

- IntelliJ CE: `sudo pacman -S intellij-idea-community-edition`

- Android Studio: `yay -S android-studio`

- lnav: `yay -S lnav`

- Slack: `yay -S slack-desktop`

- dbeaver: `sudo pacman -S dbeaver`

- insomnia: `yay -S insomnia-designer`

- docker: `sudo pacman -S docker`

- shellcheck: `sudo pacman -S shellcheck`

- tokei: `sudo pacman -S tokei`
