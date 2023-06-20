# 폰트 설정

> 폰트 목록 `fc-list`

monospace font 설치

```sh
sudo pacman -S ttf-fira-code
sudo pacman -S ttf-ibm-plex
yay -S ttf-sourcecodepro-nerd
yay -S ttf-d2coding
```

emoji font 설치

```sh
sudo pacman -S noto-fonts-emoji
```

noto-cjk conf 심볼릭 링크

```sh
sudo ln -s /etc/fonts/conf.avail/70-noto-cjk.conf /etc/fonts/conf.d/
```

## X11 fallback

`/etc/fonts/conf.d/51-local.conf`를 활성화하고 `/etc/fonts/local.conf` 파일에 다음 내용 생성

```xml
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
  <alias>
    <family>sans-serif</family>
    <prefer>
      <family>Noto Sans</family>
      <family>Noto Color Emoji</family>
      <family>Noto Emoji</family>
    </prefer>
    <default>
      <family>Noto Sans CJK KR</family>
    </default>
  </alias>
  <alias>
    <family>serif</family>
    <prefer>
      <family>Noto Serif</family>
      <family>Noto Color Emoji</family>
      <family>Noto Emoji</family>
    </prefer>
    <default>
      <family>Noto Serif CJK KR</family>
    </default>
  </alias>
  <alias>
    <family>monospace</family>
    <prefer>
      <family>Source Code Pro</family>
      <family>Noto Sans Mono</family>
      <family>Noto Color Emoji</family>
      <family>Noto Emoji</family>
    </prefer>
    <default>
      <family>DejaVu Sans Mono</family>
    </default>
  </alias>
</fontconfig>
```

## 개별 설정

`/etc/fonts/conf.d/65-nonlatin.conf`

```xml
<family>Noto Serif CJK KR</family> <!-- hangul (ko) -->
<family>Noto Sans CJK KR</family> <!-- hangul (ko) -->
<family>Noto Sans Mono CJK KR</family> <!-- hangul (ko)-->
```

`/etc/fonts/conf.d/60-latin.conf`

```xml
<family>Noto Serif</family>
<family>Noto Sans</family>
<family>Noto Sans Mono</family>
```
