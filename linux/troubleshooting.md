# Troubleshooting

## 블루투스 오류

### 블루투스 서비스가 켜져있지 않은 경우

```sh
# 확인
sudo systemctl status bluetooth
# 활성화
sudo systemctl enable bluetooth
# 즉시 시작
sudo systemctl start bluetooth
```

### 커널문제로 재부팅마다 페어링 해제 되는 경우

<https://wiki.archlinux.org/index.php/Bluetooth#Problems_with_all_BLE_devices_on_kernel_5.9+>

### 부팅 직후 꺼져있는 경우

<https://wiki.archlinux.org/title/bluetooth#Auto_power-on_after_boot/resume>

## 디스플레이 Backlight 오류

<https://wiki.archlinux.org/index.php/Backlight#Backlight_is_always_at_full_brightness_after_a_reboot_with_amdgpu_driver>

## pacman (eos)

- <https://wiki.archlinux.org/title/Pacman#Troubleshooting>
- <https://forum.endeavouros.com/t/update-problem-gpme-error-no-data/23381/14>
- <https://forum.endeavouros.com/t/pacman-endeavouros-db-error-need-to-renew-korean-mirror-domain/23353>

### 업데이트 중 signature 오류 발생

```sh
sudo pacman -Syy archlinux-keyring endeavouros-keyring
```

해결되지 않는 경우 추가조치

```sh
#!/usr/bin/env bash
# https://forum.endeavouros.com/t/update-problem-gpme-error-no-data/23381/30

sudo cp -f "/etc/pacman.conf" "/etc/pacman.conf.orig"
sudo sed -i 's/SigLevel.*/SigLevel = Never/' /etc/pacman.conf
sudo pacman -Syy gnupg archlinux-keyring endeavouros-keyring
sudo mv -f "/etc/pacman.conf.orig" "/etc/pacman.conf"
sudo pacman -Syu
```

## 종료(재부팅)시 비프음

<https://wiki.archlinux.org/title/PC_speaker#In_Linux>

## grub

### grub-customizer 실행오류

> locale 변경 후 실행한다

```sh
LC_ALL=C grub-customizer
```

### update-grub 실행오류

```sh
#!/usr/bin/env bash
LC_ALL=C sudo grub-mkconfig -o /boot/grub/grub.cfg
```

## VSCode 설치 후 기본 파일매니저 오류

<https://github.com/VSCodium/vscodium/blob/master/DOCS.md#how-do-i-fix-the-default-file-manager-linux>

`~/.config/mimeapps.list` 생성(수정)

```conf
[Default Applications]
inode/directory=org.gnome.Nautilus.desktop;
```

## 오디오 오류

### Firefox 브라우저에서 소리가 깨지는 현상

<https://www.reddit.com/r/pop_os/comments/cvsirf/firefox_audio_crackling_and_popping/>

- `about:config`
- `media.webspeech.synth.enabled = false`

## Keyboard Function Keys

> function keys 대신 multimedia shortcuts 으로 작동하는 경우

<https://wiki.archlinux.org/title/Apple_Keyboard#Function_keys_do_not_work>

`fnmode` - Mode of top-row keys

- 0 - disabled
- 1 - normally media keys, switchable to function keys by holding Fn key (=auto on Apple keyboards)
- 2 - normally function keys, switchable to media keys by holding Fn key (=auto on non-Apple keyboards)
- 3 - auto (Default)

### 임시 적용

```sh
echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode
```

### 영구 적용

`/etc/modprobe.d/hid_apple.conf`

```conf
options hid_apple fnmode=2
```

수정 후 재부팅 하고, 자동으로 적용되지 않는다면 [initramfs 재생성](https://wiki.archlinux.org/title/Regenerate_the_initramfs)을 진행한다
