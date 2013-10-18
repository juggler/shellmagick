# initialize the prompt system
autoload -U promptinit && promptinit

# choose the right prompt
prompt pure

# don't beep
setopt NO_BEEP
# auto cd without typing cd (useful for '..' things)
setopt AUTO_CD

# Colour support
autoload -U colors && colors

# =========== COMPLETION ===========
# init completion
autoload -U compinit
autoload -U complist
compinit -i

# for autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

# == Fuzzy matching of completions
zstyle ':completion:*' completer _expand _complete _correct _approximate # Completion modifiers.
zstyle ':completion:*:match:*' original only
zstyle ':completion:*' max-errors 1 # Be lenient to 1 errors.
# and if you want the number of errors allowed by _approximate to increase with the length of what you have typed so far:
zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'
## case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# ignore completion functions for commands you don’t have:
zstyle ':completion:*:functions' ignored-patterns '_*'
# ignore the current directory in completions
zstyle ':completion:*' ignore-parents pwd

# use a completion cache
zstyle ':completion:*' use-cache true
zstyle ':completion:*' cache-path /.zsh/cache

# Completion Options
setopt AUTO_LIST             # Always automatically show a list of ambiguous completions.
setopt COMPLETE_IN_WORD      # Complete items from the beginning to the cursor.
setopt NO_ALWAYS_LAST_PROMPT # Put prompt beneath potentials
setopt COMPLETEALIASES       # Complete aliased commands

# =========== HISTORY ===========
# prevent from putting duplicate lines in the history
setopt HIST_IGNORE_DUPS
# =========== PATH ===========
# do not add anything to $path if it's there already
typeset -U path
path=($path)

# =========== RBENV ===========
# to enable shims and autocompletion for rbenv
eval "$(rbenv init -)"

# =========== ALIASES ===========
alias pas="ruby lib/pas.rb"
alias ls="ls -aG"
source ~/.zsh/aliases/git.zsh
source ~/.zsh/aliases/ruby.zsh
source ~/.zsh/aliases/rails.zsh
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
