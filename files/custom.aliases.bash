# Vüm Specific Aliases

alias daily='bundle && yarn && rails voom:open voom:refresh && lint && specs && heroku local'
alias lint='rubocop && yarn eslint .'
alias cleandb='rails db:reset voom:open voom:refresh voom:create_test_promotion'
alias specs='rails db:migrate && rails db:seed && rails db:test:prepare && rails parallel:prepare && rails parallel:spec'
alias hlogin='heroku auth:login --expires-in=28800'
alias hlogout='heroku auth:logout'

