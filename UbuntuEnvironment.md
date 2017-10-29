# 우분투 설정사항

## 우분투에서 사용하는 패키지들

- fcitx : `sudo apt-get install fcitx-hangul` 설치 후 `im-config`에서 기본 입력기 설정
- ubuntu-tweak-tool
- numix theme
  ```sh
  sudo add-apt-repository ppa:numix/ppa
  sudo apt-get update
  sudo apt-get install numix-gtk-theme numix-icon-theme-circle
  ```
- lm-sensors
- imwheel
- tlp
  ```sh
  sudo add-apt-repository ppa:linrunner/tlp
  sudo apt install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms
  ```
- zsh
  ```sh
  sudo apt-get install zsh
  chsh -s /usr/bin/zsh
  ```
- oh-my-zsh
  ```sh
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
  ```
- vim
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
  sudo apt-get install -y nodejs
  ```
- yarn
- firefox aurora
  ```sh
  sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora
  sudo apt update
  ```
- python3-pip
- git
- bleachbit

## 기타설정

### Noto Sans 우선순위 설정

`/etc/fonts/conf.d/64-language-selector-prefer.conf` 파일수정

## Gnome-Shell 확장기능 목록

- Alternatetab
- Impatience
- Lock Keys
- Native Window Placement
- Places Status Indicator
- Status Area Horizontal Spacing
- Ubuntu appindicators
- Ubuntu dock
- User Themes
- System-monitor : `sudo apt-get install gir1.2-gtop-2.0 gir1.2-networkmanager-1.0  gir1.2-clutter-1.0`