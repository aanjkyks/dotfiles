# dotfiles

zsh and vim configs, mostly. 

## ZSH dependencies 
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# cp ~/.zshrc ~/.zshrc.bak
# echo "source ~/dotfiles/.zshrc" > ~/.zshrc
# cp ~/.vimrc ~/.vimrc.bak
# echo "source ~/dotfiles/.vimrc" > ~/.vimrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# remember about lsd
```
## xmonad
thanks, dt. [dt's dotfiles][dt_link]

[dt_link]: https://gitlab.com/dwt1/dotfiles
