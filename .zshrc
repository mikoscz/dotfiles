# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias foreman='nocorrect foreman'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew cp encode64 extract gem git git-extras git-hubflow git-remote-branch github heroku node npm osx rails rake ruby rvm ssh-agent zsh-syntax-highlighting z zsh-autosuggestions fzf-zsh)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:/Users/mikoscz/.rvm/gems/ruby-2.3.3@ntbackend/bin

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_GC_HEAP_INIT_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

export NVM_DIR="/Users/mikoscz/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Rails aliases
alias rdd='rake db:drop'
alias rdc='rake db:create'
alias rdm='rake db:migrate'
alias rddcm='rake db:drop db:create db:migrate'
alias rddcms='rake db:drop db:create db:migrate db:seed'
alias rc='rails c'
alias rs='rails s'
alias rsd='rails s -d'
alias rk='kill `cat tmp/pids/server.pid`'
alias rl='tail -f log/development.log'
alias gdf='g diff'
alias rbc='rubocop -a'
alias gs='git status -s'
alias gdc='git diff --cached'
alias aliasall='{ alias; git aliases;  } | sort'
alias gccm='gco milestones-v3.7'
alias yodapush='ggpush -f'
alias krysia="git for-each-ref --sort=-committerdate refs/heads --format='%(HEAD)%(color:yellow)%(refname:short)|%(color:bold green)%(committerdate:relative)|%(color:blue)%(subject)|%(color:magenta)%(authorname)%(color:reset)'|column -ts'|'"
alias papiesz="cat ~/tmp/jp2.txt"
alias blyat="cat ~/tmp/blyat.txt"
alias gclean="git clean -f"
alias v="nvim ."
alias c="code ."
alias t="tig"

# Elixir aliases

alias iexm="iex -S mix"
alias iexp="iex -S mix phx.server"

# Docker aliases
alias dkall="docker kill $(docker ps -q)"

export ERL="-kernel shell_history_path \"$HOME/.elixir-history\" $ERL"

# added by travis gem

alias pietpass="rails r 'puts User.find_by_email(\"piet.neirinck@vtelligence.com\").update(password: \"secret\")'"
[ -f /Users/mikoscz/.travis/travis.sh ] && source /Users/mikoscz/.travis/travis.sh
export PATH="/usr/local/opt/elasticsearch@2.4/bin:$PATH"

# Add iex history
export ERL_AFLAGS="-kernel shell_history enabled"
alias iex='iex --erl "-kernel shell_history enabled"'

# Pyenv setup
export PATH="/Users/mikoscz/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


export PATH=/Users/mikoscz/.pyenv/shims/python:$PATH

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/mikoscz/.nvm/versions/node/v9.8.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/mikoscz/.nvm/versions/node/v9.8.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/mikoscz/.nvm/versions/node/v9.8.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/mikoscz/.nvm/versions/node/v9.8.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

export PATH="/usr/local/opt/mongodb@3.6/bin:$PATH"

# KAFKA
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

# DOCKER
alias dc='docker-compose'

export EDITOR=nvim

. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
