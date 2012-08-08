# Setup

1. Get a terminal that supports 256 colors.

   If you're on a mac, get your hands on iTerm2 and then

   `Preferences > Profiles > Terminal > Report Terminal Type: xterm-256color.`

2. Clone

   `git clone git https://github.com/addywaddy/vimrc.git ~/.vim`

4. Vundle

   `git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`

3. Symlink

   `ln -s ~/.vim/vimrc ~/.vimrc`

4. Install Bundles

   `vim +BundleInstall +qall`
