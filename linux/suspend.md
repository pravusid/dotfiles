# 절전 설정

multi boot 사용중이라면 윈도우즈 절전 설정 및 바이오스 설정 변경이 필요

## Windows11 절전 설정

> 다음 중 하나를 수행함

(A) 최대절전(Hibernate) 비활성화

```powershell
# 관리자 권한으로 터미널 실행
powercfg /h off
```

(B) 빠른 시작(Fast Startup) 비활성화

- 제어판
- 하드웨어 및 소리
- 전원 옵션
- 전원 단추 작동 설정
- (현재 사용할 수 없는 설정 변경)
- `빠른 시작 켜기` 해제

## 대기상태에서 USB 전력 비활성화

BIOS 설정 `Configuration`에서 `Always on USB` 설정을 비활성화 한다

## Enabling S3

The BIOS has two "Sleep State" options, called "Windows" and "Linux", which you can find in at Config -> Power -> Sleep State.

The Linux option is the traditional S3 power state where all hardware components are turned off except for the RAM, and it should work normally.
The Windows option is a newer software-based "modern standby" which works on Linux (despite the name).

One possible benefit to the Windows sleep state is faster wake up time, and one possible drawback is increased power usage.

Reboot and verify whether S3 is working by running:

`dmesg | grep -i "acpi: (supports"`

You should now see something like this:

`ACPI: (supports S0 S3 S4 S5)`
