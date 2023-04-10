# 리눅스 한글입력

<https://wiki.archlinux.org/title/Localization_(한국어)/Korean_(한국어)>

- 입력장치 조회: `xinput list`
- 입력장치 입력 확인: `xinput test <id>`

## 키보드 설정

> 설정 > 키보드

- 입력 소스: 한국어(101/104키 호환): `AltR` 키를 `Hangul`, `CtrlR` 키를 `Hangulhanja` 키로 배치함
- 특수 문자 입력 > 대체 문자 키 옵션을 사용하지 않는 키로 설정: `Menu 키`

## IM_MODULE 설정

### in Wayland

`~/.config/environment.d/99-imsetting.conf`

```conf
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx

GTK_IM_MODULE=ibus
QT_IM_MODULE=ibus
XMODIFIERS=@im=ibus
```

### in X11

`~/.xinitrc`

```sh
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
```

### (GUI) in Debian

기본 입력기 설정: `im-config`

## fcitx

<https://wiki.archlinux.org/title/Fcitx5>

> Warning: Fcitx is now in maintenance mode. It is recommended to use Fcitx5 instead.

설치: `sudo pacman -S fcitx5 fcitx5-configtool fcitx5-hangul fcitx5-qt fcitx5-gtk`

### **입력 방법 설정**

- `키보드-한국어-한국어(101/104키 호환)`
- `Hangul`

### fcitx 전역 옵션

`~/.config/fcitx5/config`

- fcitx 구성 → 전역 옵션

  - 단축키: 트리거 입력기 제외 해제
  - 동작방식: 입력기 변경시 입력기 정보 표시 (한영 전환 팝업 삭제)

- fcitx 구성 → 애드온

  - 모듈: 클립보드 → 트리거 키 해제
  - 입력기: 키보드 → 변환 키 선택 → 없음
  - 입력기: 키보드 → 트리거 힌트 모드, 힌트 모드를 한 번만 트리거 → 단축키 해제 (`ctrl`+`alt`+`h`(`j`) 단축키 충돌)
  - 입력기: 한글 → 한자 모드 변환 키 → `F9` 삭제

### fcitx Troubleshooting

[fcitx5 한글 단어 커밋 이전 caret 오류](https://forum.manjaro.org/t/fcitx5-korean-hangul-space-is-inserted-in-a-wrong-position-when-typing-in-gedit/105291)

> 원인은 알 수 없으나 설정을 지우고 다시 설치하니 작동함 (또는 fcitx5-qt fcitx5-gtk 설치로 해결되었을 수도 있음)

## ibus

<https://wiki.archlinux.org/title/IBus>

> 한글 끝글자 버그는 대부분 수정되었으나, JetBrains IDE 에서 여러 문제가 발생

```sh
sudo pacman -S ibus ibus-hangul
ibus start
```

### ibus 설정 (GNOME DE)

> Note: GNOME has integrated IBus since version 3.6 and makes use of it by default

설정 → 키보드 → 입력소스 설정을 다음과 같이 한다

- `키보드-한국어-한국어(101/104키 호환)`
- `Hangul`

`meta + spacebar` 버튼을 눌러 입력방식을 ibus-hangul로 변경한다

### ibus 설정 (Other DE)

To launch the IBus preferences window, you can:

- Right-click on its tray icon and select Preferences, or
- Find and launch the GUI application IBus Preferences, or
- Run the command `ibus-setup` in a terminal

## kime

<https://github.com/Riey/kime>

## 참고: xkb 설정

> 키보드 설정 대신 xkb 설정을 변경해도 된다

### 글로벌 설정 변경

xkb 설정 디렉토리로 간다

```sh
cd /usr/share/X11/xkb/symbols/
```

한/영 Alt_R 매핑을 수정한다

```sh
sudo vim altwin
```

파일을 열어 meta_alt의 `Alt_R, Meta_R` 부분을 `Hangul`로 수정한다

```sh
// Meta is mapped to second level of Alt keys.
partial modifier_keys
xkb_symbols "meta_alt" {
    key <LALT> { [ Alt_L, Meta_L ] };
    key <RALT> { type[Group1] = "TWO_LEVEL",
                 symbols[Group1] = [ Hangul ] };
    modifier_map Mod1 { Alt_L, Alt_R, Meta_L, Meta_R };
//  modifier_map Mod4 {};
};
```

한자 Ctrl_R 매핑을 수정한다

```sh
sudo vim pc
```

파일을 열어 RCTL의 `Control_R` 부분을 `Hangul_Hanja`로 수정한다

```sh
key <RCTL> {        [ Hangul_Hanja          ]       };
```

### 로컬 설정 변경

> 로컬설정은 ime 시작/재시작과 함께 초기화 되는 문제점이 있음

gnome-tweaks > 키보드와 마우스 > 추가 배치 옵션 > 한국어 한/영, 한자 키 설정

> gnome-tweaks에서 변경한 설정 위치: dconf > `/org/gnome/desktop/input-sources/xkb-options`
