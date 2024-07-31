# Homebrew

## Homebrew 설치

- <https://brew.sh/ko/>
- <https://github.com/Homebrew/install>

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Brewfile

> 패키지 설치: `brew bundle --file=<file-name>` (file 생략하면 Brewfile 사용)

- Brewfile 생성
  - 기본명령어: `brew bundle dump`
  - 사용자정의: `./brew-dump <file-name>`
- 설정파일
  - [Brewfile](./Brewfile)
  - [Brewfile.mba](./Brewfile.mba)

### OpenInTerminal Lite

```sh
# Terminal
defaults write wang.jianing.app.OpenInTerminal-Lite LiteDefaultTerminal iTerm
defaults write wang.jianing.app.OpenInTerminal-Lite LiteDefaultTerminal Warp

# Editor
defaults write wang.jianing.app.OpenInEditor-Lite LiteDefaultEditor Zed
```

> In /Applications folder, hold down the Cmd key and drag the app into Finder Toolbar.

### sublime-text

> 심볼릭링크: `ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl`

## Troubleshooting

### docker-compose

<https://formulae.brew.sh/formula/docker-compose>

> Compose is now a Docker plugin. For Docker to find this plugin, symlink it:

```sh
mkdir -p ~/.docker/cli-plugins
ln -sfn $HOMEBREW_PREFIX/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose
```
