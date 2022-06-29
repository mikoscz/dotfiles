https://sourabhbajaj.com/mac-setup/SystemPreferences/


install rosetta 
/usr/sbin/softwareupdate --install-rosetta --agree-to-license




System:
1) Apple menu () > About This Mac > Software Update.

Trackpad:
2) System preference tap to click

Keyboard:
- Map CapsLock to control Preferences -> keyboard

Dock:
1) Check "Automatically hide and show the Dock
2) 2) Remove workspace auto-switching by running the following command
defaults write com.apple.dock workspaces-auto-swoosh -bool NO

Finder:
General:
- Change New finder window show to open in your Home Directory
Sidebar:
- Add Home directory

Menubar:
Change battery to Show percentage symbols

Spotlight:
Uncheck fonts, images, files etc.

Accounts:
- add google accounrs

Defaults:
Enable repeating keys by pressing and holding down keys: defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false (and restart any app that you need to repeat keys in)

screenshots
mkdir -p ~/Screenshots
defaults write com.apple.screencapture location ~/Screenshots/ && killall SystemUIServer



XCode:
xcode-select --install


Install homebrew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Keys:
- setup .ssh keys
- mkdir ~/.ssh
- copy keys
- https://sourabhbajaj.com/mac-setup/Git/ Add your SSH key to the ssh-agent step - TBU


Git:
git config --global user.name "Michał Staśkiewicz"
git config --global user.email "staskiewicz.miko@gmail.com"
git config --global core.editor "nvim"

asdf plugins:
asdf plugin add neovim
brew install cmake
brew install pkg-config
asdf install neovim ref:master
asdf global neovim ref:master



brew install --cask raycast
brew install --cask kitty
brew install --cask docker
brew install --cask notion
brew install --cask 1password
brew install --cask slack
brew install --cask spotify
brew install asdf
brew install git
brew install ripgrep
brew install fzf
brew install starship

brew install libpq
ln -s $(brew --prefix libpq)/bin/psql ~/bin


brew install --cask autodesk-fusion360

Installing Volta Node Manager:
curl https://get.volta.sh | bash
volta install node // installs current lts

3) 1password setup
https://1password.com/downloads/mac/

Setup keyboard repeat speed

```defaults write -g KeyRepeat -int 2```
```defaults write -g InitialKeyRepeat -int 15```

Setup python

asdf plugin add python
asdf install python latest:3
asdf install python latest:3
asdf global python 3.10.5

Setup Elixir
brew install autoconf
brew install openssl@1.1
brew install wxwidgets
export KERL_BUILD_DOCS="yes"
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf install erlang latest
asdf global erlang latest

asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.gi


### Setup dir for local binaries
mkdir ~/bin

add to ~/.zshrc
```
export PATH="$HOME/bin:$PATH"
```

# Troubleshooting
1) ASDF cannot reshim after upgrade eg. brew updated asdf from 0.9.0 to 0.10.0 and after asdf reshim tools are not working
```rm -rf ~/.asdf/shims && asdf reshim```

