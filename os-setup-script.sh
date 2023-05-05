#!/usr/bin/env bash
# Setup script for setting up a new macos machine
echo "Starting setup"
# install xcode CLI
xcode-select —-install

# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

PACKAGES=(
    git
    tmux
    bat
    macvim
    mysql
    fzf
    ctags
<...list all the packages you want to install>
    readline
)
echo "Installing packages..."
brew install ${PACKAGES[@]}
# any additional steps you want to add here
# link readline
brew link --force readline

echo "Installing cask..."
CASKS=(
    iterm2
    adobe-acrobat-reader
    skype
    slack
    spotify
    intellij-idea-ce
    visual-studio-code
    steam
    evernote
    1password
    macdown
)
echo "Installing cask apps..."
brew cask install ${CASKS[@]}

echo "Macbook setup completed!"
