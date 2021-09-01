# Repository 변경

## Arch

```sh
sudo pacman -S reflector

# backup mirror list
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak

# sort by rate
sudo reflector --country Korea,Japan --latest 5 --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
```

## Ubuntu

```sh
sudo cp /etc/apt/sources.list ~/sources.list.old
sudo sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
```
