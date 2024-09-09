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

### 제어 센터

`시스템 설정 > 제어 센터`

- 기타 모듈
  - 배터리
    - 퍼센트 보기: on
- 메뉴 막대만
  - 최근 문서, 응용 프로그램 및 서버: 없음

### 데스크탑 및 Dock

`시스템 설정 > 데스크탑 및 Dock`

- Dock
  - 자동으로 Dock 가리기와 보기: on
  - Dock에서 제안된 앱 및 최근 앱 보기: off
- 핫 코너 (버튼): off

### 배터리

`시스템 설정 > 배터리`

- 저전력 모드: 배터리 사용 시에만
- 배터리 성능 상태: 최적화된 배터리 충전: aldente 사용하면 off
- 옵션
  - 배터리를 사용할 때 화면 밝기를 약간 낮추기: on
  - 네트워크 연결 시 깨우기: 전원 어댑터 연결 시에만
  - 배터리를 사용하는 동안 비디오 스트리밍 최적화: on

### 키보드

`시스템 설정 > 키보드`

- `🌐`키를 누를 때 실행할 동작: 안함
- **키보드 탐색**을 사용하여 컨트롤 간에 초점 이동 활성화 (ventura 이전에는 단축키탭)
- 받아쓰기: 단축키 `받아쓰기 버튼 누르기`로 설정

`시스템 설정 > 키보드 > 키보드 단축키 (버튼)`

- Launchpad 및 Dock
  - Dock 가리기 켜기/끄기 off
- 디스플레이
  - 밝기 감소|증가 off
- Mission Control
  - Mission Control (`ctrl + arrow`) 항목 전체 on
  - 기타 항목 (데스크탑 보기, 데스크탑 1로 전환, 빠른메모 ...) off
- 기능 키
  - F1, F2 등의 키를 표준 기능 키로 사용 on

`시스템 설정 > 키보드 > 텍스트 입력 > 입력소스 (편집)`

- 먖춤법 자동 수정: 해제
- 스페이스를 두 번 눌러 마침표 추가: 해제

### 트랙패드

`시스템 설정 > 트랙패드`

- 포인트 및 클릭
  - 이동 속도: 5/9
  - 클릭: 가볍게
- 추가 제스처
  - 페이지 쓸어넘기기: 두 손가락
  - 전체 화면 응용 프로그램 쓸어넘기기: 세 손가락
  - Mission Control: 세 손가락
