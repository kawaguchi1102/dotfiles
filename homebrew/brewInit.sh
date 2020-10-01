#!/usr/bin/bash

# Homebrewのアップデート
brew update

# Homebrewでインストールしたパッケージのアップデート
brew upgrade
brew cask upgrade

# 古いformulaを削除
# brew cleanup
# brew cask cleanup

# Homebrewの診断
brew doctor

# homebrewパッケージのインストール
brew bundle
