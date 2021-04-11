# Repository 변경

## Manjaro

```sh
# 가까운 다섯곳
sudo pacman-mirrors --fasttrack 5
# 국가 직접지정
sudo pacman-mirrors --country South_Korea Japan Taiwan China Hong_Kong
# 초기화
sudo pacman-mirrors --country all

# 업데이트
sudo pacman -Syu

# 브랜치 변경
sudo pacman-mirrors --api --set-branch <stable|testing|unstable>
```

## Ubuntu

```sh
sudo cp /etc/apt/sources.list ~/sources.list.old
sudo sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
```
