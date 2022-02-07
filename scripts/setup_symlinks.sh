ln -vsf ~/dotfiles/.zshrc ~/.zshrc

ln -vsf ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf 
ln -vsf ~/dotfiles/kitty/themes/nord.conf ~/.config/kitty/nord.conf 

mkdir -p ~/.config/nvim
ln -vsf ~/dotfiles/nvim/**/* ~/.config/nvim
