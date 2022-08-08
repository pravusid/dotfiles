# 사용하는 패키지들

## 기본앱 변경

```sh
sudo sed -i 's/<현재>/<변경후>/' /usr/share/applications/defaults.list
```

## Apps

- `sudo pacman -S grub-customizer`

- gnome

  ```sh
  sudo pacman -S gnome-tweaks
  sudo pacman -S dconf-editor
  ```

- gnome apps

  ```sh
  sudo pacman -S gnome-software-packagekit-plugin
  # pdf
  sudo pacman -S evince
  # image viewer
  sudo pacman -S eog
  # email
  sudo pacman -S geary
  # calendar
  sudo pacman -S gnome-calendar
  # calculator
  sudo pacman -S gnome-calculator
  # weather
  sudo pacman -S gnome-weather
  # google drive
  sudo pacman -S gvfs-google
  ```

- `sudo pacman -S papirus-icon-theme`

- `sudo pacman -S fprintd`

- `sudo pacman -S lm_sensors`

- `yay -S stacer`

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

  - Troubleshooting

    - `No module named 'ulauncher'` 오류 발생하는 경우 -> 재설치 (w/ clean build)
    - 버전관리자(asdf, pyenv)에서 python global 설정한 경우 빌드 실패할 수 있음

- `yay -S dropbox`

- `sudo pacman -S chromium`

- `yay -S google-chrome`

- `sudo pacman -S remmina`

- `sudo pacman -S peek`

- `sudo pacman -S gimp`

- `sudo pacman -S vlc`

- `yay -S slack-desktop`

- `sudo pacman -S telegram-desktop`

- `sudo pacman -S discord`

- `yay -S notion-app`

- `yay -S obsidian`

- `sudo pacman -S veracrypt`

- `yay -S 7-zip`

## 런타임/컴파일러

- Java

  - `sudo pacman -S jdk11-openjdk`
  - RPM|DEB: <https://adoptopenjdk.net/installation.html#linux-pkg>

> [use asdf](../README.md#asdf)

## CLI

- zsh

  ```sh
  sudo pacman -S zsh
  chsh -s /usr/bin/zsh
  ```

- `sudo pacman -S git git-delta`

- utils

  ```sh
  sudo pacman -S fd bat ripgrep jq xclip gnupg tokei
  sudo pacman -S curl aria2 mitmproxy
  yay -S gitleaks lnav
  ```

- `sudo pacman -S broot && broot --install`

- `sudo pacman -S docker docker-compose`

- `sudo pacman -S shellcheck`

- aws

  ```sh
  python -m ensurepip --upgrade
  python -m pip install --user awscli aws-sam-cli
  ```

## 개발툴

- `sudo pacman -S vim`

- `yay -S visual-studio-code-bin`

  - [background issue](https://github.com/microsoft/vscode/issues/85452)
    - Command Palette search for "Configure Runtime Arguments"
    - Set `disable-hardware-acceleration: true`
    - Restart

- `sudo pacman -S intellij-idea-community-edition`

- `yay -S android-studio`

- `sudo pacman -S dbeaver`

- `yay -S insomnia-bin`

- `yay -S figma-linux-bin`
