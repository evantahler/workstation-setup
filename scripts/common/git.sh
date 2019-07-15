source scripts/helpers/brew.sh

echo
echo "Installing Git and associated tools"
brew_install_if_missing git
brew_install_if_missing git-pair
brew_install_if_missing git-flow

# Add the git flow configuration to the global gitconfig. This is kind-of weird
git config --global include.path ~/workspace/ponton/.gitconfig

# Get latest version of vim
brew_install_if_missing vim --with-override-system-vi

brew_cask_install_if_missing rowanj-gitx
brew_cask_install_if_missing sourcetree
brew_cask_install_if_missing github

echo
echo "Putting a sample git-pair file in ~/.pairs"
cp files/.pairs ~/.pairs

echo
echo "Setting global Git configurations"
git config --global core.editor /usr/local/bin/vim
git config --global transfer.fsckobjects true

