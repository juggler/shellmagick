# basic aliases
alias gs='git status -s'
alias ga='git add -A'
alias gc='git commit'
alias gb='git branch'
alias gm='git merge'
compdef _git gm=git-merge
alias gri='git rebase -i'
alias grp='git rebase -p'
compdef _git grp=git-rebase
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gl='git l'
alias gf='git fetch'
alias gd='git diff'
compdef _git gd=git-diff
alias gbd='git branch -D'
compdef _git gbd=git-branch
alias gpo='git push origin'
compdef _git gpo=git-push
alias glo='git pull --rebase origin'
compdef _git glo=git-pull
alias gco='git checkout'
compdef _git gco=git-checkout
alias gg='git grep -n --color'

# quickly resolve conflicts using vim
alias rc='vim +/"<<<<<<<" $( git diff --name-only --diff-filter=U | xargs )'

# deploy staging/production to heroku
alias staging-deploy='git push -f staging develop:master'
alias production-deploy='git push -f production master'
