# bundle config build.libxml-ruby --use-system-libraries=true --with-xml2-include=/usr/local/opt/libxml2/include/libxml2/
source scripts/helpers/brew.sh

set +e

brew_cask_install_if_missing istat-menus
brew_cask_install_if_missing google-drive-file-stream
brew_cask_install_if_missing dropbox
brew_cask_install_if_missing 1password
brew_cask_install_if_missing spotify
brew_cask_install_if_missing 1password
brew_cask_install_if_missing slack
brew_cask_install_if_missing steam
brew_cask_install_if_missing notion
brew_cask_install_if_missing mailplane
brew_cask_install_if_missing visual-studio-code

# configure dropbox to run main application directories
sudo rm -rf ~/Desktop && ln -s ~/Dropbox/Desktop ~/Desktop
sudo rm -rf ~/Documents && ln -s ~/Dropbox/Documents ~/Documents
sudo rm -rf ~/Downloads && ln -s ~/Dropbox/Downloads ~/Downloads
sudo rm -rf ~/Pictures && ln -s ~/Dropbox/Pictures ~/Pictures

brew_install_if_missing mas

mas install 497799835 # xcode
mas install 424389933 # final cut
mas install 1142578753 # OmniGraffle
mas install 1140092499 # smultron
mas install 411643860 # daisy disk

set -e

# modify appearance of dock: remove standard icons, add chrome and iTerm
curl https://raw.githubusercontent.com/kcrawford/dockutil/master/scripts/dockutil > /usr/local/bin/dockutil
chmod a+rx,go-w /usr/local/bin/dockutil
dockutil --list | awk -F\t '{print "dockutil --remove \""$1"\" --no-restart"}' | sh
dockutil --add /Applications/Mailplane.app
dockutil --add /Applications/Messages.app
dockutil --add '/Applications/Firefox Developer Edition.app'
dockutil --add /Applications/Notion.app
dockutil --add /Applications/Slack.app
dockutil --add /Applications/Spotify.app
dockutil --add "/Applications/Visual Studio Code.app"
dockutil --add /Applications/iTerm.app
dockutil --add '' --type spacer
dockutil --add '/Applications'
dockutil --add '~/Downloads' --display folder
