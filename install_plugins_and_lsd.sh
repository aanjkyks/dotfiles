cp ~/.zshrc ~/.zshrc.bak
cp .zshrc ~/.zshrc

wget https://github.com/Peltoche/lsd/releases/download/0.16.0/lsd_0.16.0_amd64.deb
sudo dpkg -i lsd_0.16.0_amd64.deb
rm -f lsd_0.16.0_amd64.deb

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

clear
source ~/.zshrc
