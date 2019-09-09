source scripts/helpers/brew.sh

echo
echo "Configuring bash with bash-it"
brew_install_if_missing grc
brew_install_if_missing coreutils
brew_install_if_missing rbenv
brew_install_if_missing watch
rm -rf ~/.bash_it
git clone https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent
source ~/.bash_profile

# bash-it enable completion git
# bash-it enable plugin ssh
# bash-it enable plugin rbenv
# bash-it enable completion ssh
# bash-it enable alias git

# powerline theme
sed -i "" "s/export BASH_IT_THEME='bobby'/export BASH_IT_THEME='powerline-multiline'/" ~/.bash_profile
brew cask install font-meslo-for-powerline