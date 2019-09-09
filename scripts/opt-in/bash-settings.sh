cat ~/.bash_profile | grep 'rbenv init' || echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
cat ~/.bash_profile | grep 'BASH_IT_THEME="powerline-multiline"' || echo 'BASH_IT_THEME="powerline-multiline"' >> ~/.bash_profile
