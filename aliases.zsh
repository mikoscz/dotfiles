function git_current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

alias v="nvim"

alias tf="terraform"
alias tfa='terraform apply'
alias tfaaa='terraform apply -auto-approve'
alias tfi='terraform init'
alias tfiu='terraform init -upgrade'
alias tfp='terraform plan'
alias tfv='terraform validate'

alias gdf="git diff"
alias gap="git add -p ."
alias gdc="git diff --staged"
