echo
echo 'Customizing OS X configuration'

# set menu clock
# see http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns
defaults write com.apple.menuextra.clock "DateFormat" 'EEE MMM d  h:mm:ss a'
killall SystemUIServer

# fast key repeat rate, requires reboot to take effect
defaults write ~/Library/Preferences/.GlobalPreferences KeyRepeat -int 1
defaults write ~/Library/Preferences/.GlobalPreferences InitialKeyRepeat -int 15

# set finder to display full path in title bar
defaults write com.apple.finder '_FXShowPosixPathInTitle' -bool true

# stop Photos from opening automatically
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
#to revert use defaults -currentHost delete com.apple.ImageCapture disableHotPlug

# stop iTunes from opening automatically when iOS devices connected
defaults write com.apple.iTunesHelper ignore-devices 1

# move the dock to the right side of the screen (requires logout to take effect)
defaults write com.apple.dock orientation bottom

# show the dock
defaults write com.apple.dock autohide -bool true
killall Dock

# set the desktop wallpaper
# osascript -e 'tell application "System Events" to set picture of every desktop to ("files/images/splash.png" as POSIX file as alias)'
