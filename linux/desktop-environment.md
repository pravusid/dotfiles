# Desktop environment

## X Window 환경확인

`echo $XDG_SESSION_TYPE`

## dconf dump & load

```sh
# dconf 백업
dconf dump /org/gnome/shell/extensions/<extension-name>/ > <file-name>
# 설정 불러오기 전 기존 설정 초기화
dconf reset -f /org/gnome/shell/extensions/<extension-name>/
# 설정 불러오기
dconf load /org/gnome/shell/extensions/<extension-name>/ <file-name>
```

## 단축키 설정

`dconf-editor`: `/org/gnome/desktop/wm/keybindings/`

- `activate-window-menu`: 비활성화
- `switch-to-workspace-up`, `switch-to-workspace-down`: 비활성화
- `switch-to-workspace-left`, `switch-to-workspace-right`: `'<Control><Alt>Left'`, `'<Control><Alt>Right'` 비활성화

## 설정 -> 키보드 바로 가기

- 스크린샷을 사진 위치에 저장: 비활성화

- 사용자 설정 바로가기

  - `gnome-terminal`: `Ctrl+Alt+T`
  - `flameshot gui`: `Print`

## color schemes

- <https://github.com/arcticicestudio/nord-dircolors/>
- <https://github.com/arcticicestudio/nord-gnome-terminal>

## 하드웨어 가속

- <https://wiki.archlinux.org/index.php/Hardware_video_acceleration>
- <https://wiki.archlinux.org/index.php/Firefox#Hardware_video_acceleration>
