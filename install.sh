# Zsh + oh-my-zsh
## Isntall zsh
brew install zsh
chsh -s /bin/zsh

## Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Copy configs
cp src/.zshrc $HOME
cp src/.iterm2_shell_integration.zsh $HOME


# Xresources, iterm
cp src/.Xresources $HOME
xrdb -merge $HOME/.Xresources


# IDEs and Editors
brew install vim
cp src/.vimrc $HOME
cp src/.vscode.json $HOME/Library/Application Support/Code/User/settings.json
cp -r src/idea-settings $HOME # Go export in Idea settings


# Git
cp .gitconfig $HOME

sudo reboot

