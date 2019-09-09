echo
echo "Installing Ruby tools and Ruby 2.6.4"
brew_install_if_missing readline
eval "$(rbenv init -)"
rbenv install 2.6.4 --skip-existing
rbenv global 2.6.4
gem install bundler:'< 2'
rbenv rehash

