#for mass install of common packages
sudo apt install zsh
sudo apt install update
sudo apt install upgrade
sudo apt install tree
sudo apt install git
sudo apt install nitrogen
sudo apt install tmux
sudo apt install curl
sudo apt install wget
#run nitrogen to configure monitors
sudo apt install vim
# sudo apt install

#place config file in proper locations
rm ~/.vimrc
cp .vimrc ~/.vimrc
rm ~/.tmux.conf
cp .tmux.conf ~/.tmux.conf

#change default shell
chsh -s $(which zsh)

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#powerlevelfonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d
