# 사용하는 패키지들

## 기본앱 변경

```sh
sudo sed -i 's/<현재>/<변경후>/' /usr/share/applications/defaults.list
```

## Apps

```sh
sudo pacman -S \
    grub-customizer \
    gnome-tweaks \
    dconf-editor \
    \
    gnome-calendar \
    gnome-calculator \
    gnome-weather \
    evince \
    eog \
    geary \
    gvfs-google \
    \
    papirus-icon-theme \
    fprintd \
    lm_sensors \
    \
    chromium \
    remmina \
    gimp \
    vlc \
    telegram-desktop \
    discord \
    veracrypt \
    bleachbit

yay -S \
    google-chrome \
    dropbox \
    ulauncher \
    slack-desktop \
    notion-app-electron \
    cryptomator-bin \
    7-zip \
    drawio-desktop-bin
```

### ulauncher

- 단축키 설정

  - in X11

    - Make sure no app is using `ALT+SPACE`.
    - Open ULauncher Preferences. Map keys to `Alt+Super L` (the order is important) and exit ULauncher.
    - Then, edit settings.json in home/user/.config/ulauncher and change `Super L` to `space`.
    - You should have sth like this: `"hotkey-show-app": "<Alt>space"`. Save & launch ULauncher.

  - in Wayland

    - Install package wmctrl (needed to activate app focus)
    - Open Ulauncher Preferences and set hotkey to something you'll never use
    - Open OS Settings > Devices > Keyboard > Add Hotkey > Scroll all the way down > Click +
    - In Command enter `ulauncher-toggle`, set name and shortcut, then click Add

- Troubleshooting

  - `No module named 'ulauncher'` 오류 발생하는 경우 -> 재설치 (w/ clean build)
  - 버전관리자에서 python global 설정한 경우 빌드 실패할 수 있음

## CLI

zsh

```sh
sudo pacman -S zsh
chsh -s /usr/bin/zsh
```

Apps

```sh
sudo pacman -S \
    wl-clipboard \
    gnupg \
    git git-delta \
    fd \
    bat \
    ripgrep \
    jq \
    tokei \
    curl \
    aria2 \
    mitmproxy \
    docker docker-compose \
    lnav \
    shellcheck \
    lazygit \
    tree \
    difftastic

sudo pacman -S broot && broot --install

yay -S \
    gitleaks

sudo pacman -S aws-cli-v2
yay -S aws-sam-cli-bin
```

## 개발툴

```sh
sudo pacman -S \
    vim \
    intellij-idea-community-edition \
    dbeaver

yay -S \
    visual-studio-code-bin \
    android-studio \
    insomnia-bin \
    figma-linux-bin
```

## Java

시스템 자바 버전 변경

```sh
# Arch
# https://wiki.archlinux.org/title/Java#Switching_between_JVM
sudo archlinux-java status
sudo archlinux-java set <JAVA_ENV_NAME>

# ubuntu
sudo update-alternatives --config java
```
