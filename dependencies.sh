#!/bin/env bash

i_was_here=${pwd}

set -e


echo "Welcome!" && sleep 2

mkdir ~/.srcs

sudo pacman --noconfirm -Syyuu 

sudo pacman -S git base-devel

git clone https://aur.archlinux.org/paru.git ~/.srcs/paru
cd ~/.srcs/paru/ && makepkg -si

paru -S picom-jonaburg-git

paru -S vim xmonad xmonad-contrib xmobar lsd bashtop alacritty zsh stow tmux 

xmonad --recompile

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cd ${i_was_here} && stow */

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


