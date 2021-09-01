# 리눅스 한글입력

<https://wiki.archlinux.org/title/Localization_(한국어)/Korean_(한국어)>

- 입력장치 조회: `xinput list`
- 입력장치 입력 확인: `xinput test <id>`

## 키보드 설정

> 설정 > 키보드

- 입력 소스: 한국어(101/104키 호환): `AltR` 키를 `Hangul`, `CtrlR` 키를 `Hangulhanja` 키로 배치함
- 특수 문자 입력 > 대체 문자 키 옵션을 사용하지 않는 키로 설정: `Menu 키`

## fcitx

설치: `sudo pacman -S fcitx fcitx-configtool fcitx-hangul`

- **입력 방법 설정**

  - `키보드-한국어-한국어(101/104키 호환)`
  - `Hangul`

- 한영 전환 팝업 삭제

  - `~/.config/fcitx/config` 파일 수정: `ShowInputWindowAfterTriggering=False`
  - in gui: 입력기 설정 -> 전역설정 -> 추가 설정 보기 -> 모양새 -> 입력기 변경후 입력기 힌트 표시 해제

- `;`키 충돌: 입력기 설정 → 부가기능 → QuickPhrase → 트리거키 옵션 없음으로 → 아래의 추가 설정 클릭 → 철자 힌트 보지 않음 체크

- `ctrl`+`alt`+`h` 단축키 충돌: 입력기 설정 → 부가기능 → Keyboard Layout → 단어 힌트 전환 단축기 해제

### fcitx 설정 in Wayland

`~/.config/environment.d/99-imsetting.conf`

```conf
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
```

### fcitx 설정 in X11

`~/.xinitrc`

```conf
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
```

### fcitx 설정 in Debian

기본 입력기 설정: `im-config`

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
