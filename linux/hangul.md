# 리눅스 한글입력

## Manjaro & nimf

<https://github.com/hamonikr/nimf/wiki/Manjaro-build>

## nimf 설치

```sh
sudo pacman -S binutils base-devel intltool qt4 libappindicator-gtk3 libhangul anthy librime m17n-lib m17n-db gtk-doc
yay -S nimf
```

### nimf 설정

`~/.xprofile`

```sh
export GTK_IM_MODULE=nimf
export QT4_IM_MODULE="nimf"
export QT_IM_MODULE=nimf
export XMODIFIERS="@im=nimf"
```

nimf-settings 에서 환경 변수 설정 옵션을 켠다(ON)

gnome 데스크탑 환경의 경우 다음 실행

```sh
gsettings set org.gnome.settings-daemon.plugins.keyboard active false
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/IMModule':<'nimf'>}"
```

## Ubuntu & fcitx & xkb 설정

fcitx: `sudo apt install fcitx-hangul` 설치 후 `im-config`에서 기본 입력기 설정

- 한영 전환 팝업 삭제: `~/.config/fcitx/config` 파일 수정: `ShowInputWindowAfterTriggering=False`
- `;`키 충돌: 입력기 설정 → 부가기능 → QuickPhrase → 맨위 옵션을 없음으로 → 아래의 고급 설정 클릭 → 철자 힌트 보이지 않기 체크
- `ctrl`+`alt`+`h` 단축키 충돌: 입력기 설정 → 부가기능 → Keyboard Layout → 단어 힌트 전환 단축기 해제

### 전체 설정 변경

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

> Ubuntu Tweak > 키보드와 마우스 > 추가 배치 옵션 > 한국어 한/영, 한자 키 설정과 동일하며 Fcitx 시작/재시작과 함께 초기화 되는 문제점도 동일함

xkb 로컬 설정을 위한 디렉토리 생성

```sh
mkdir -p ~/.xkb/symbols
mkdir -p ~/.xkb/keymap
```

xkb 설정 복사

```sh
setxkbmap -print > ~/.xkb/keymap/hangul.xkb
```

xkb 로컬 설정 변경

```text
xkb_keymap {
    xkb_keycodes  { include "evdev+aliases(qwerty)" };
    xkb_types     { include "complete"      };
    xkb_compat    { include "complete"      };
    xkb_symbols   {
        include "pc+us+kr(kr104):2+inet(evdev)+terminate(ctrl_alt_bksp)+kr(ralt_hangul)+kr(rctrl_hanja)"
    };
    xkb_geometry  { include "pc(pc105)"     };
};
```

xkb 로컬 설정 적용 (`~/.xinitrc` 파일)

```sh
xkbcomp -I$HOME/.xkb ~/.xkb/keymap/hangul.xkb $DISPLAY
```
