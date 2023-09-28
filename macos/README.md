# macOS 환경설정

## iTerm2

- color schemes: <https://iterm2colorschemes.com/>
- [iTerm2 설정파일](./iterm2.json)

## Homebrew

[Homebrew 설정방법](./homebrew/README.md)

## Karabiner

[Karabiner 설정방법](./karabiner/README.md)

## xcode-select 재설치

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

`시스템 설정 > 인터넷 계정 (동기화)`

- iCloud (제외): Mail, 연락처, 캘린더
- Google (포함): Mail, 캘린더

### 핫 코너

`시스템 설정 > 데스크탑 및 Dock > 핫 코너 (버튼)`

### 배터리

`시스템 설정 > 배터리`

- 저전력 모드: 배터리 사용 시에만
- 옵션
  - 네트워크 연결 시 깨우기: 전원 어댑터 연결 시에만
  - 배터리를 사용하는 동안 비디오 스트리밍 최적화: on

### 키보드

`시스템 설정 > 키보드`

- `🌐`키를 누를 때 실행할 동작: 안함
- **키보드 탐색**을 사용하여 컨트롤 간에 초점 이동 활성화 (ventura 이전에는 단축키탭)

`시스템 설정 > 키보드 > 키보드 단축키 (버튼)`

- Launchpad 및 Dock
  - Dock 가리기 켜기/끄기 비활성화
- 디스플레이
  - 밝기 감소|증가 비활성화
- Mission Control
  - Mission Control (`ctrl + arrow`) 항목 전체 활성화
  - 기타 항목 (데스크탑 보기, 데스크탑 1로 전환, 빠른메모 ...) 비활성화
- 스크린샷
  - 전체 비활성화
- 기능 키
  - F1, F2 등의 키를 표준 기능 키로 사용: on
