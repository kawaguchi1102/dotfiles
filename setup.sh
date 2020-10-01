#!usr/bin/bash

# カレントディレクトリを取得
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# 隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles -boolean true

# 元に戻す場合(隠しファイルを表示する)
# defaults delete com.apple.finder AppleShowAllFiles

# .DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# 元に戻す場合(.DS_Storeを作成する)
# defaults write com.apple.desktopservices DSDontWriteNetworkStores false

# Xcode Command Line Toolsのインストール
xcode-select --install

# .bashrcへシンボリック
# ln -sf $SCRIPT_DIR/.bashrc ~/.bashrc
