# Applications

## 기본앱 변경

```sh
sudo sed -i 's/<현재>/<변경후>/' /usr/share/applications/defaults.list
```

## 시스템 자바 버전 변경

```sh
# Arch
# https://wiki.archlinux.org/title/Java#Switching_between_JVM
sudo archlinux-java status
sudo archlinux-java set <JAVA_ENV_NAME>

# ubuntu
sudo update-alternatives --config java
```

## Repository 변경

### Arch

```sh
sudo pacman -S reflector

# backup mirror list
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak

# sort by rate
sudo reflector --country Korea,Japan --latest 5 --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
```

#### 패키지 매니저

`/etc/pacman.conf`

```conf
XferCommand = /usr/bin/aria2c --allow-overwrite=true --continue=true --file-allocation=none --log-level=error --max-tries=2 --max-connection-per-server=2 --max-file-not-found=5 --min-split-size=5M --no-conf --remote-time=true --summary-interval=60 --timeout=5 --dir=/ --out %o %u
```

> 국내에 저장소 미러가 있고 pacman6 부터 병렬 다운로드 지원(`ParallelDownloads` 옵션)하므로 변경필요성 낮음

`/etc/makepkg.conf`

```conf
DLAGENTS=('ftp::/usr/bin/aria2c -UWget -s4 %u -o %o'
          'http::/usr/bin/aria2c -UWget -s4 %u -o %o'
          'https::/usr/bin/aria2c -UWget -s4 %u -o %o'
          'rsync::/usr/bin/rsync --no-motd -z %u %o'
          'scp::/usr/bin/scp -C %u %o')
```

references

- <https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#aria2>
- <https://wiki.archlinux.org/title/Aria2#Using_Aria2_with_makepkg>
- [use aria2c for downloader in pacman](https://bbs.archlinux.org/viewtopic.php?id=163744)

### Ubuntu

```sh
sudo cp /etc/apt/sources.list ~/sources.list.old
sudo sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
```

## 앱 목록

- system
  - `grub-customizer`
  - `gnome-tweaks`
  - `dconf-editor`
  - `wl-clipboard`
- tiling
  - <https://github.com/hyprwm/Hyprland>
  - <https://github.com/YaLTeR/niri>
