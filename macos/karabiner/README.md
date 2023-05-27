# karabiner

<https://pqrs.org/osx/karabiner/>

Karabiner-Elements 실행

## 설정파일

- [설정파일-mbp](./karabiner.json)
- [설정파일-mba](./karabiner.mba.json)
- [설정파일-complex-modifications](./assets/complex_modifications)

## Devices

변경할 장치 활성화(Modify events)되어 있는지 확인

## Simple Modifications > Target Device: Apple Internal Keyboard / Trackpad

- FROM `left_control` TO `fn`
- FROM `fn` TO `left_control`
- FROM `right_command` TO `f18`
- FROM `right_option` TO `f19`

## Simple Modifications > Target Device: 외부 키보드

- FROM `left_command` TO `left_option`
- FROM `left_option` TO `left_command`
- 한/영 키 설정
  - 한/영 키가 `right_option`인 경우 (표준): FROM `right_option` TO `f18`
  - 한/영 키가 `KanjiMode`인 경우: FROM `lang1` TO `f18`
- FROM `right_control` TO `f19`

## (시스템) 입력 소스 선택 단축키

> 시스템 환경설정 > 키보드 > 단축키(탭) > 입력 소스

- 이전 입력 소스 선택: 비활성화
- 입력 메뉴에서 다음 소스 선택: `f18`

## Complex Modifications

- Add rule
- `f19 key → hyper key` 규칙 활성화 (설정파일-complex-modifications 참고)
