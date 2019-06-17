# Don't stop if android fails
set +e

source scripts/helpers/brew.sh

brew tap AdoptOpenJDK/openjdk
brew_cask_install_if_missing adoptopenjdk8
brew_cask_install_if_missing android-sdk
brew_cask_install_if_missing android-studio

set -e
