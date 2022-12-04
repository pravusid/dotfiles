# macOS 환경설정

## homebrew

### homebrew 설치

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Brewfile

- Brewfile 읽고 패키지 설치: `brew bundle`
- 현재 설정으로 Brewfile 생성: `brew bundle dump`

[설정파일](./Brewfile)

> sublime-text: 심볼릭링크: `ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl`

## iTerm2

color schemes: <https://iterm2colorschemes.com/>

[설정파일](./iterm-pravusid.json)

## karabiner

[설정방법](./karabiner.md)

[설정파일](./karabiner.json)

## xcode

### xcode-select 재설치

```sh
# 각각 실행
sudo rm -rf /Library/Developer/CommandLineTools
xcode-select --install

# inline
sudo rm -rf $(xcode-select -p) && xcode-select --install
```

## 아이콘캐시 초기화

```sh
# The command to remove the main store is
sudo rm -rfv /Library/Caches/com.apple.iconservices.store

# That for the subsidiary data is
# which includes the Dock icon cache too.
sudo find /private/var/folders/ \( -name com.apple.dock.iconcache -or -name com.apple.iconservices \) -exec rm -rfv {} \;

killall Dock Finder
```

## 네트워크 드라이브 `.DS_Store` 생성 방지

```sh
defaults write com.apple.desktopservices DSDontWriteNetworkStores true
```

## 시스템 환경설정

### 동기화

`시스템 환경설정 > 인터넷 계정 (동기화)`

- iCloud (제외): Mail, 연락처, 캘린더
- Google (포함): Mail, 캘린더

### 핫 코너

`시스템 환경설정 > Mission Control > 핫 코너`

### 배터리

`시스템 환경설정 > 배터리`

- 배터리

  - 제외: `배터리 전원을 사용하는 동안 Power Nap 활성화하기`
  - 선택: (최적화된 배터리 충전) or (AlDente app)
  - 나머지 포함

- 전원 어댑터

  - 포함: `자동 그래픽 전환`
  - 나머지 제외
