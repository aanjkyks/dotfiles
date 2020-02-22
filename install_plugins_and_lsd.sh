echo -n Password: 
read -s password

sudo apt install git lolcat fortune cowsay zsh
$password

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

cp ~/.zshrc ~/.zshrc.bak
echo "source ~/dotfiles/.zshrc" > ~/.zshrc
cp ~/.vimrc ~/.vimrc.bak
echo "source ~/dotfiles/.vimrc" > ~/.vimrc

wget https://github.com/Peltoche/lsd/releases/download/0.16.0/lsd_0.16.0_amd64.deb
sudo dpkg -i lsd_0.16.0_amd64.deb
rm -f lsd_0.16.0_amd64.deb

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

