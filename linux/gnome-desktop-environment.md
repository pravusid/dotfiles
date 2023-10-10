# Gnome Desktop Environment

## X Window 환경확인

`echo $XDG_SESSION_TYPE`

## 단축키 설정

`dconf-editor`: `/org/gnome/desktop/wm/keybindings/`

- `activate-window-menu`: 비활성화
- `switch-to-workspace-up`, `switch-to-workspace-down`: 비활성화
- `switch-to-workspace-left`, `switch-to-workspace-right`: `'<Control><Alt>Left'`, `'<Control><Alt>Right'` 비활성화

60% 이하 배열 키보드 사용시

- `cycle-windows`, `cycle-windows-backward`: 비활성화
- `cycle-group`: `'<Alt>Escape'` 추가
- `cycle-group-backward`: `'<Shift><Alt>Escape'` 추가

## 설정 -> 키보드 바로 가기

- 스크린샷을 사진 위치에 저장: 비활성화

- 사용자 설정 바로가기

  - `gnome-terminal`: `Ctrl+Alt+T`

## 하드웨어 가속

- <https://wiki.archlinux.org/index.php/Hardware_video_acceleration>
- <https://wiki.archlinux.org/index.php/Firefox#Hardware_video_acceleration>

## Gnome Extension

확장 설정: dconf-editor: `org > gnome > shell > extension`

### dconf dump & load

```sh
# dconf 백업
dconf dump /org/gnome/shell/extensions/<extension-name>/ > <file-name>
# 설정 불러오기 전 기존 설정 초기화
dconf reset -f /org/gnome/shell/extensions/<extension-name>/
# 설정 불러오기
dconf load /org/gnome/shell/extensions/<extension-name>/ <file-name>
```

### install

- `sudo pacman -S gnome-shell-extensions`
- `yay -S gnome-shell-extension-dash-to-dock`
- `yay -S gnome-browser-connector-git`

### list

- AppIndicator and KStatusNotifierItem Support
- Blur my Shell
- Emoji Selector: `dconf write /org/gnome/shell/extensions/emoji-selector/emoji-keybinding "['<Super>period']"`
- Espresso
- Lock Keys
- Places Status Indicator
- Removable Drive Menu
- Sensory Perception
- Status Area Horizontal Spacing
- UPower Battery
- User Themes

### 버전확인 비활성화

```sh
dconf write /org/gnome/shell/disable-extension-version-validation true
```
