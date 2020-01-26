source scripts/helpers/brew.sh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# turn on oh-my-zhs plugins
sed -i "" "s/plugins=(git)/ZSH_THEME=\"plugins=(docker emoji git heroku node nvm osx rbenv yarn)" ~/.zshrc

# powerline theme
brew tap sambadevi/powerlevel9k
brew install powerlevel9k
brew cask install font-meslo-for-powerline
sed -i "" "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"powerlevel9k/powerlevel9k\"/" ~/.zshrc
