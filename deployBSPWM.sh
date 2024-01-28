#!/bin/bash

sudo pacman -Syy

sudo pacman -Su

echo Nvidia
sudo pacman -S nvidia nvidia-utils nvidia-settings cuda cuda-tools

echo AMD
sudo pacman -S xf86-video-amdgpu

echo Mesa
sudo pacman -S mesa

echo VM
sudo pacman -S xf86-video-qxl

echo iwd
sudo pacman -S iwd

sudo pacman -S chezmoi xorg xorg-xinit bspwm picom sxhkd dmenu rxvt-unicode tmux neovim nitrogen lxappearance gnome-themes-extra papirus-icon-theme htop btop glances nvtop neofetch duf inxi pavucontrol sxiv mpv thunar gvfs ffmpegthumbnailer tumbler file-roller gparted mtools ntfs-3g net-tools mousepad bc noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-liberation ttf-roboto-mono-nerd ttf-dejavu-nerd ttf-jetbrains-mono-nerd ttf-iosevka-nerd wget dmidecode xdotool glxinfo p7zip termdown mediainfo qemu yt-dlp ethtool clinfo dunst plocate polybar xclip syncthing obsidian blender darktable handbrake kdenlive sox movit mlt rtaudio lib32-sdl_image breeze inkscape audacity libreoffice flameshot zathura zathura-pdf-mupdf zathura-djvu zathura-ps zathura-cb android-file-transfer mtpfs gvfs-mtp obs-studio steam discord workrave smartmontools gsmartcontrol tesseract-data-eng tesseract-data-rus leptonica firefox

echo Making bspwm
mkdir -p "/home/v/.config/bspwm"
mkdir -p "/home/v/.config/sxhkd"
cp "/usr/share/doc/bspwm/examples/bspwmrc" "/home/v/.config/bspwm/"
cp "/usr/share/doc/bspwm/examples/sxhkdrc" "/home/v/.config/sxhkd/"
cp "/etc/X11/xinit/xinitrc" "/home/v/.xinitrc"

echo Installing yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~/

echo Yay apps
yay -S urxvt-resize-font-git visual-studio-code-bin sct jp2a timer papirus-folders ranger ueberzug wttr tetris-cli-git tint-tetris vitetris gimp gimp-plugin-gmic

echo chezmoi
chezmoi init https://github.com/vmay7742/df
chezmoi apply -v

sudo mv ~/.config/other/picom.conf /etc/xdg/

#gimp-plugin-resynthesizer shutter-encoder --noconfirm 
