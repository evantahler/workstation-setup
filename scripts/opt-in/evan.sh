echo ""
echo " ~~~ Making `hostname` a happy Evan Machine ~~~"
echo ""

source scripts/helpers/brew.sh

## Main Applications
mkdir -p workspace
source ${MY_DIR}/scripts/opt-in/mac-apps.sh

## Developer Tools
source ${MY_DIR}/scripts/opt-in/ruby.sh
source ${MY_DIR}/scripts/opt-in/node.sh
source ${MY_DIR}/scripts/opt-in/heroku.sh
source ${MY_DIR}/scripts/opt-in/docker.sh
# source ${MY_DIR}/scripts/opt-in/android.sh
source ${MY_DIR}/scripts/opt-in/vscode.sh

brew_install_if_missing postgresql
brew_install_if_missing mysql@5.7
brew_install_if_missing redis
brew_install_if_missing imagemagick
brew_install_if_missing libxml2
brew_cask_install_if_missing chromedriver
brew_cask_install_if_missing ngrok
brew_install_if_missing memcached

brew services start postgresql
brew services start redis

source ${MY_DIR}/scripts/opt-in/bash-settings.sh

## Designer Tools
source ${MY_DIR}/scripts/opt-in/designer.sh