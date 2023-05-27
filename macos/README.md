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

[설정파일](./iterm2.json)

## karabiner

[설정방법](./karabiner/README.md)

## Binding Home/End keys

- <https://damieng.com/blog/2015/04/24/make-home-end-keys-behave-like-windows-on-mac-os-x/>
- <https://discussions.apple.com/thread/251108215?login=true>
- <https://github.com/microsoft/vscode/issues/111950>

`mkdir -p $HOME/Library/KeyBindings`

`~/Library/KeyBindings/DefaultKeyBinding.dict`

```conf
{
  "\UF729"  = moveToBeginningOfLine:; // home
  "\UF72B"  = moveToEndOfLine:; // end
  "$\UF729" = moveToBeginningOfLineAndModifySelection:; // shift-home
  "$\UF72B" = moveToEndOfLineAndModifySelection:; // shift-end
  "^\UF729" = moveToBeginningOfDocument:; // ctrl-home
  "^\UF72B" = moveToEndOfDocument:; // ctrl-end
  "^$\UF729" = moveToBeginningOfDocumentAndModifySelection:; // ctrl-shift-home
  "^$\UF72B" = moveToEndOfDocumentAndModifySelection:; // ctrl-shift-end
}
```

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

### 키보드

`시스템 환경설정 > 키보드`

- 키보드 탐색을 사용하여 컨트롤 간에 초점 이동 활성화 (ventura 이전에는 단축키탭)

`시스템 환경설정 > 키보드 > 단축키`

- 디스플레이

  - 밝기 감소|증가 비활성화

- Mission Control

  - Mission Control (`ctrl + arrow`) 항목 전체 활성화
  - 기타 항목 (데스크탑 보기, 데스크탑 1로 전환, 빠른메모 ...) 비활성화
