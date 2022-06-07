# Troubleshooting

## 블루투스 오류

블루투스 서비스가 켜져있지 않은 경우

```sh
# 확인
sudo systemctl status bluetooth
# 활성화
sudo systemctl enable bluetooth
# 즉시 시작
sudo systemctl start bluetooth 
```

커널문제로 재부팅마다 페어링 해제 되는 경우

<https://wiki.archlinux.org/index.php/Bluetooth#Problems_with_all_BLE_devices_on_kernel_5.9+>

## 디스플레이 Backlight 오류

<https://wiki.archlinux.org/index.php/Backlight#Backlight_is_always_at_full_brightness_after_a_reboot_with_amdgpu_driver>

## pacman (eos)

- <https://wiki.archlinux.org/title/Pacman#Troubleshooting>
- <https://forum.endeavouros.com/t/update-problem-gpme-error-no-data/23381/14>
- <https://forum.endeavouros.com/t/pacman-endeavouros-db-error-need-to-renew-korean-mirror-domain/23353>

## 종료(재부팅)시 비프음

<https://wiki.archlinux.org/title/PC_speaker#In_Linux>
