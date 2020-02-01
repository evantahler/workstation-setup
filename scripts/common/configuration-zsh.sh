source scripts/helpers/brew.sh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# turn on oh-my-zhs plugins
sed -i "" "s/plugins=\(git\)/ZSH_THEME=\"plugins=\(docker emoji git heroku node nvm osx rbenv yarn\)" ~/.zshrc

# powerline theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sed -i "" "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"powerlevel9k/powerlevel9k\"/" ~/.zshrc
