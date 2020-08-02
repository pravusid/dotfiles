# karabiner

<https://pqrs.org/osx/karabiner/>

- Karabiner-Elements 실행

- Simple Modifications > Target Device: 외부 키보드 선택

  - FROM `left_command` TO `left_option`
  - FROM `left_option` TO `left_command`

- Simple Modifications > Target Device: Apple Internal Keyboard / Trackpad

  - FROM `left_control` TO `fn`
  - FROM `fn` TO `left_control`

- 한/영 키 설정

  - 한/영 키가 `right_alt`인 경우 (표준)

    - FROM `right_alt` TO `f18`

  - 한/영 키가 `right_alt` 대신 `KanjiMode`, RControl 대신 `Eisu` 인 경우

    - FROM `lang1` TO `f18`
    - FROM `lang2` TO `right_control`

  - `환경설정 > 키보드 > 단축키(탭) > 입력 소스 > 입력 메뉴에서 다음 소스 선택: F18
