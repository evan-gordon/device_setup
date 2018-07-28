#for mass install of common packages
sudo apt install update
sudo apt install upgrade
sudo apt install tree
sudo apt install git
sudo apt install nitrogen
sudo apt install tmux
#run nitrogen to configure monitors
sudo apt install vim
# sudo apt install

#place config file in proper locations
rm ~/.vimrc
cp .vimrc ~/.vimrc
rm ~/.tmux.conf
cp .tmux.conf ~/.tmux.conf
