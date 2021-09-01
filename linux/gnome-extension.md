# Gnome Extension

확장 설정: dconf-editor: `org > gnome > shell > extension`

## dconf dump & load

```sh
# dconf 백업
dconf dump /org/gnome/shell/extensions/<extension-name>/ > <file-name>
# 설정 불러오기 전 기존 설정 초기화
dconf reset -f /org/gnome/shell/extensions/<extension-name>/
# 설정 불러오기
dconf load /org/gnome/shell/extensions/<extension-name>/ <file-name>
```

## install

- `sudo pacman -S gnome-shell-extensions`
- `yay -S chrome-gnome-shell`
- `yay -S gnome-shell-extension-dash-to-dock`

## list

- AppIndicator and KStatusNotifierItem Support
- Blur my Shell
- Emoji Selector
- Espresso
- Lock Keys
- Places Status Indicator
- Removable Drive Menu
- Sensory Perception
- Sound Input & Output Device Chooser
- Tweaks & Extensions in System Menu
- User Themes
