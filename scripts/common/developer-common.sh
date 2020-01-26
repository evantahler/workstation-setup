# All these applications are independent, so if one
# fails to install, don't stop.
source scripts/helpers/brew.sh

set +e

echo
echo "Installing applications"

# Utilities
brew_install_if_missing htop

brew_cask_install_if_missing shiftit
echo
echo "configure shiftit to select 1/3 screen width, 1/2 screen width and 2/3 screen width:"
echo "`defaults write org.shiftitapp.ShiftIt multipleActionsCycleWindowSizes YES`"
echo

# Terminals

brew_cask_install_if_missing iterm2
brew_install_if_missing jq
brew_cask_install_if_missing ngrok

# Browsers

brew_cask_install_if_missing google-chrome
brew_cask_install_if_missing firefox-developer-edition
brew_install_if_missing imagemagick
brew_install_if_missing libxml2
brew_cask_install_if_missing chromedriver

# Text Editors

brew_cask_install_if_missing macdown
brew_cask_install_if_missing macvim

# VI configuration
echo
echo "Installing vim configuration"
pushd ~/
if [ ! -d ~/.vim ]; then
    git clone https://github.com/pivotal/vim-config.git ~/.vim
    ~/.vim/bin/install
fi
popd

set -e
