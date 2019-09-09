source scripts/helpers/brew.sh

echo
echo "Installing version of NodeJS"

# brew install nvm (The NVM website suggests there are some problems with the homebrew version; don't use it)
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# bash-it enable plugin nvm

brew_install_if_missing node
brew_install_if_missing yarn
brew_cask_install_if_missing react-native-debugger

nvm install v12
nvm alias default v12
npm install yarn -g
