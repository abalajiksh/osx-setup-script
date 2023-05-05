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
    julia
    ffmpeg
    go
    languagetool
    hugo
    handbrake
    tmux
    gcc
    cmake
    boost
    boost-mpi
    hdf5
    htop
    mpv
)
echo "Installing packages..."
brew install ${PACKAGES[@]}
# any additional steps you want to add here


echo "Installing cask..."
CASKS=(
    iterm2
    qview
    mactex
    spotify
    inkscape
    gimp
    audacity
    vscodium
    pdf-expert
    brave-browser
    google-chrome
    firefox
    logseq
    obsidian
    zotero
    visual-studio-code
    seafile-client
    steam
    prowritingaid
    scrivener
    miniconda
    jupyterlab
    microsoft-onenote
    microsoft-remote-desktop
    surge-synthesizer
    whatsapp
    signal
    libreoffice
    minecraft
    rectangle
    shottr
    qbittorrent
    the-unarchiver
    raspberry-pi-imager
    zoom
    anydesk
    github
    blender
    alfred
    cyberduck
    kindle
    musescore
    mathpix-snipping-tool
    obs
    dbeaver-community
    keycastr
)
echo "Installing cask apps..."
brew --cask install ${CASKS[@]}

echo "Macbook setup completed!"
