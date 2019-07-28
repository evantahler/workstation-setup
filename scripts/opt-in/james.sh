bundle config build.libxml-ruby --use-system-libraries=true --with-xml2-include=/usr/local/opt/libxml2/include/libxml2/
source scripts/helpers/brew.sh

brew_install_if_missing mas
brew_cask_install_if_missing spotify
brew_cask_install_if_missing 1password

mas install 585829637     # Todoist.app
mas install 1091189122    # Bear.app

set -e
