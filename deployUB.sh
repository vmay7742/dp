#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo add-apt-repository universe

sudo apt install snapd

sudo apt install bc rxvt-unicode gnome-tweaks gnome-shell-extension-manager tmux neovim htop btop glances nvtop powertop neofetch duf inxi sct jp2a ranger libxext-dev git wget p7zip-full mediainfo qemu yt-dlp ethtool clinfo net-tools iperf3 plocate iotop pulsemixer syncthing darktable gimp gimp-gmic gimp-resynthesizer inkscape handbrake audacity kdenlive libreoffice libreoffice-l10n-ru zathura zathura-djvu zathura-ps zathura-cb obs-studio tesseract-ocr tesseract-ocr-rus qbittorrent virt-manager guestfs-tools dmg2img uml-utilities genisoimage libguestfs-tools make gnome-calendar gnome-clocks gnome-weather gnome-sushi steam xournalpp texlive-latex-base mtp-tools remmina

sudo snap install chezmoi obsidian code blender element-desktop discord rnote --classic

mkdir -p "/home/v/qemu"
