ln -vsf ~/dotfiles/.zshrc ~/.zshrc

ln -vsf ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf 
ln -vsf ~/dotfiles/kitty/themes/nord.conf ~/.config/kitty/nord.conf 
ln -vsf ~/dotfiles/kitty/themes/tokyonight-storm.conf ~/.config/kitty/tokyonight-storm.conf 

mkdir -p ~/.config/nvim
ln -vsf ~/dotfiles/nvim/**/* ~/.config/nvim

ln -vsf ~/dotfiles/elixir/iex.exs ~/.iex.exs 
