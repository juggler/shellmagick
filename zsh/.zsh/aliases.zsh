# bins ==============================================
alias git="gh"
alias pas="ruby lib/pas.rb"
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim -w ~/.vimlog "$@"'
#alias emacs="/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS/Emacs -nw"
#alias emacs="open -a Emacs"
alias tmux="TERM=xterm-256color tmux"

# General ============================================
alias _='sudo'
alias o='open'
alias mkdir='mkdir -p'
alias f='fs'
alias ls='ls -lh -A -G'
alias e='${(z)VISUAL:-${(z)EDITOR}}'
alias psg="ps aux | grep "
alias cls='clear'
alias flush="dscacheutil -flushcache"
# Lists the ten most used commands.
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"

# vimrc editing
alias ve='vim ~/.vimrc'

# zsh profile editing
alias ze='vim ~/.zshrc'
alias zr='source ~/.zshrc'

# tmux conf editing
alias te='vim ~/.tmux.conf'
alias tr='tmux source-file ~/.tmux.conf'

# Alias Editing
alias ae='vim ~/.zsh/aliases.zsh'    # alias edit
alias ar='source ~/.zsh/aliases.zsh' # alias reload

# git ================================================

# basic aliases
alias gs='git status -sb'
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
alias gl='git log'
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

# rails ==============================================
alias rs='be rails s'
alias rc='be rails c'
alias ss='./script/rails s'
alias sc='./script/rails c'
alias mi='be rake db:migrate db:test:prepare'

# ruby ===============================================
alias bi='bundle install'
alias bu='bundle update'
alias be='bundle exec'

# tmux ===============================================
alias mxa='tmux attach-session -t'
alias mxl='tmux list-sessions'
alias mxkill='tmux kill-server'

# brew ===============================================
alias bri='brew install'
alias bru='brew update'
alias brug='brew upgrade'

# quick jump functions ===============================
acl() {
  cd ~/Projects/acl/$1;
}
compctl -W ~/Projects/acl -/ acl

fs() {
  cd ~/Projects/fs/$1;
}
compctl -W ~/Projects/fs -/ fs

compdef -d play
play() {
  cd ~/Projects/play/$1;
}
compctl -W ~/Projects/play -/ play
