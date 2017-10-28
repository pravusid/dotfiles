# 우분투 설정사항

## 우분투에서 사용하는 패키지들

- ubuntu-tweak-tool
- numix theme
  ```sh
  sudo add-apt-repository ppa:numix/ppa
  sudo apt-get update
  sudo apt-get install numix-gtk-theme numix-icon-theme-circle
  ```
- lm-sensors
- imwheel
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
- python3-pip
- git

## Gnome-Shell 확장기능 목록

- Alternatetab
- Impatience
- Lock Keys
- Native Window Placement
- Places Status Indicator
- Sensory Perception
- Status Area Horizontal Spacing
- Ubuntu appindicators
- Ubuntu dock
- User Themes