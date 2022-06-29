function git_current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

alias v="nvim"
alias gdf="git diff"
alias gap="git add -p ."
alias gdc="git diff --staged"
