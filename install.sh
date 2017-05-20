git clone https://github.com/jahrlin/dotfiles.git

# Install Powerline fonts
git clone https://github.com/powerline/fonts.git
./fonts/install.sh
rm -rf fonts

rm ~/.zshrc
rm ~/.vimrc
rm ~/.tmux.conf

ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.vim ~/.vim

brew install the_silver_searcher

