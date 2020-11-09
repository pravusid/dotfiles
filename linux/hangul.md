# 리눅스 한글입력

- 입력장치 조회: `xinput list`
- 입력장치 입력 확인: `xinput test <id>`

## Manjaro & nimf

## nimf 설치

- <https://github.com/hamonikr/nimf/wiki/Manjaro-build>
- <https://wiki.archlinux.org/index.php/Nimf>

```sh
# 빌드한 패키지를 다운로드 받아 바로 설치할 수도 있음
# https://github.com/hamonikr/nimf/tree/master/archlinux
sudo pacman -U ./nimf-2019.08.14-1-any.pkg.tar.xz
```

### nimf 설정

`~/.xprofile`

```sh
export GTK_IM_MODULE=nimf
export QT4_IM_MODULE="nimf"
export QT_IM_MODULE=nimf
export XMODIFIERS="@im=nimf"
nimf
```

- nimf-settings 에서 `환경 변수 설정` 옵션을 켠다(ON)
- 한국어를 제외한 엔진을 비활성화 한다

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

> 로컬설정은 Fcitx 시작/재시작과 함께 초기화 되는 문제점이 있음

gnome-tweaks > 키보드와 마우스 > 추가 배치 옵션 > 한국어 한/영, 한자 키 설정

> gnome-tweaks에서 변경한 설정 위치: dconf > `/org/gnome/desktop/input-sources/xkb-options`
