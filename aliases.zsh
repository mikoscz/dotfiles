# JS/Node
alias load_nvm="[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh""  # This loads nvm

# Git
alias gdf='g diff'
alias gclean="git clean -f"
alias krysia="git for-each-ref --sort=-committerdate refs/heads --format='%(HEAD)%(color:yellow)%(refname:short)|%(color:bold green)%(committerdate:relative)|%(color:blue)%(subject)|%(color:magenta)%(authorname)%(color:reset)'|column -ts'|'"
alias gs='git status -s'
alias gdc='git diff --cached'
alias yodapush='ggpush -f'
alias gap='git add . -p'

# Rails
alias rdd='rake db:drop'
alias rdc='rake db:create'
alias rdm='rake db:migrate'
alias rddcm='rake db:drop db:create db:migrate'
alias rddcms='rake db:drop db:create db:migrate db:seed'
alias rc='rails c'
alias rs='rails s'
alias rsd='rails s -d'
alias rbc='rubocop -a'

# Editors
alias v="nvim "
alias c="code "
alias t="tig"

# Elixir aliases
export ERL_AFLAGS="-kernel shell_history enabled"
alias iex='iex --erl "-kernel shell_history enabled"'
alias iexm="iex -S mix"
alias iexp="iex -S mix phx.server"
alias mdp="mix deps.get"
alias mtw="mix test --only wip"

# Docker aliases
alias dkall="docker kill $(docker ps -q)"
alias dc='docker-compose'
alias dsh='docker exec -it $(docker ps | fzf | awk '"'"'{print $1;}'"'"') sh'
alias dbash='docker exec -it $(docker ps | fzf | awk '"'"'{print $1;}'"'"') bash'
alias dattach='docker attach $(docker ps | fzf | awk '"'"'{print $NF}'"'"')'
alias dcrestart='compose_file=$(ls | grep docker-compose.yml | fzf); service=$(docker-compose -f $compose_file ps --service | fzf); docker-compose -f $compose_file restart $service'

# Navigation
alias gt='cd $(z | awk "{print \$2}" | fzf)'

# Terraform
alias tf=' terraform'
