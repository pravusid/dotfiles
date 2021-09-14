# 사용하는 패키지들

## 기본앱 변경

`sudo sed -i 's/<현재>/<변경후>/' /usr/share/applications/defaults.list`

## Apps

- grub-customizer: `sudo pacman -S grub-customizer`

- gnome

  - gnome tweak tool: `sudo pacman -S gnome-tweaks`
  - dconf editor: `sudo pacman -S dconf-editor`

- gnome apps: `sudo pacman -S gnome-software-packagekit-plugin`

  - pdf: `sudo pacman -S evince`
  - image viewer: `sudo pacman -S eog`
  - email: `sudo pacman -S geary`
  - calendar: `sudo pacman -S gnome-calendar`
  - calculator: `sudo pacman -S gnome-calculator`
  - weather: `sudo pacman -S gnome-weather`
  - google drive: `sudo pacman -S gvfs-google`

- papirus icon theme: `sudo pacman -S papirus-icon-theme`

- finger print: `sudo pacman -S fprintd`

- lm-sensors: `sudo pacman -S lm_sensors`

- TLP

  ```sh
  # BE
  sudo pacman -S tlp tlp-rdw
  # FE
  yay -S tlpui-git
  ```

  - ThinkPad Battery (레거시 모듈 사용 해제)

    - `TPACPI_ENABLE = 0`
    - `TPSMAPI_ENABLE = 0`

- stacer: `yay -S stacer`

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

- Dropbox: `yay -S dropbox`

- Chromium: `sudo pacman -S chromium`

- GoogleChrome: `yay -S google-chrome`

- remmina: `sudo pacman -S remmina`

- flameshot: `sudo pacman -S flameshot`

- peek: `sudo pacman -S peek`

- GIMP: `sudo pacman -S gimp`

- VLC: `sudo pacman -S vlc`

- Slack: `yay -S slack-desktop`

- Telegram Desktop: `sudo pacman -S telegram-desktop`

- Notion: `yay -S notion-app`

- Obsidian: `yay -S obsidian`

- VeraCrypt: `sudo pacman -S veracrypt`

- 7z: `yay -S 7-zip`

## 런타임/컴파일러

- Java

  - Arch: `sudo pacman -S jdk11-openjdk`
  - RPM|DEB: <https://adoptopenjdk.net/installation.html#linux-pkg>

> [use asdf](../README.md#asdf)

## 개발툴

- Visual Studio Code

  - 설치: `yay -S visual-studio-code-bin`

  - [background issue](https://github.com/microsoft/vscode/issues/85452)
    - Command Palette search for "Configure Runtime Arguments"
    - Set `disable-hardware-acceleration: true`
    - Restart

- IntelliJ CE: `sudo pacman -S intellij-idea-community-edition`

- Android Studio: `yay -S android-studio`

- dbeaver: `sudo pacman -S dbeaver`

- insomnia: `yay -S insomnia-bin`

- docker: `sudo pacman -S docker`

- docker-compose: `sudo pacman -S docker-compose`

- shellcheck: `sudo pacman -S shellcheck`

- figma: `yay -S figma-linux`
