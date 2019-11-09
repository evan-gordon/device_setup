#!/bin/bash
os=$(cat /etc/os-release | grep ID= | sed 's/ID=//')

if [[ $os = "ubuntu" ]]; then
   echo 'detected os as ubuntu'
   #for mass install of common packages
   sudo apt-get update && apt-get upgrade
   sudo apt install zsh tree git nitrogen tmux curl wget vim neofetch
   #run nitrogen to configure monitors
elif [[ $os = 'manjaro' ]]; then
   echo 'detected os as manjaro'
   sudo pacman -Syu
   pacman -S zsh tree git tmux curl wget vim neofetch
else
   echo "os isn't currently configured, exiting."
   exit
fi

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#powerlevelfonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d

#place config file in proper locations
rm ~/.startup.sh
cp startup.sh ~/
rm ~/.zshrc
cp .zshrc ~/
rm ~/.vimrc
cp .vimrc ~/
rm ~/.tmux.conf
cp .tmux.conf ~/

#change default shell
chsh -s $(which zsh)
