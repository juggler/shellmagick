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

# Vi mode
bindkey -v
export EDITOR=vim
export VISUAL=vim

# helpful keymaps
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
bindkey '^w' backward-kill-word
# bring back backward searching
bindkey '^R' history-incremental-search-backward

# By default, there is a 0.4 second delay after you hit the <ESC> key and when the mode change is registered. 
# Let's reduce this delay to 0.1 seconds.
export KEYTIMEOUT=1

# =========== COMPLETION ===========
# Add zsh-completions to $fpath.
fpath=(~/.zsh/zsh-completions/src $fpath)

# Load and initialize the completion system ignoring insecure directories.
autoload -Uz compinit && compinit -i

# Options

setopt COMPLETE_IN_WORD      # Complete from both ends of a word.
setopt ALWAYS_TO_END         # Move cursor to the end of a completed word.
setopt PATH_DIRS             # Perform path search even on command names with slashes.
setopt AUTO_MENU             # Show completion menu on a succesive tab press.
setopt AUTO_LIST             # Automatically list choices on ambiguous completion.
setopt AUTO_PARAM_SLASH      # If completed parameter is a directory, add a trailing slash.
setopt COMPLETEALIASES       # Complete aliased commands

unsetopt MENU_COMPLETE       # Do not autoselect the first completion entry.
unsetopt FLOW_CONTROL        # Disable start/stop characters in shell editor.

# for autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

# Group matches and describe.
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes

# Fuzzy match mistyped completions.
zstyle ':completion:*' completer _expand _complete _correct _approximate # Completion modifiers.
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Increase the number of errors based on the length of the typed word
zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'

# case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# ignore completion functions for commands you don’t have:
zstyle ':completion:*:functions' ignored-patterns '_*'
# ignore the current directory in completions
zstyle ':completion:*' ignore-parents pwd

# use a completion cache
zstyle ':completion:*' use-cache true
zstyle ':completion:*' cache-path ~/.zsh/.zcompcache

# Directories
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion:*:*:cd:*:directory-stack' menu yes select
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
zstyle ':completion:*' squeeze-slashes true

# History
zstyle ':completion:*:history-words' stop yes
zstyle ':completion:*:history-words' remove-all-dups yes
zstyle ':completion:*:history-words' list false
zstyle ':completion:*:history-words' menu yes

# Environmental Variables
zstyle ':completion::*:(-command-|export):*' fake-parameters ${${${_comps[(I)-value-*]#*,}%%,*}:#-*-}

# Kill
zstyle ':completion:*:*:*:*:processes' command 'ps -u $USER -o pid,user,comm -w'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;36=0=01'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*' insert-ids single

# =========== HISTORY ===========
# prevent from putting duplicate lines in the history
export HISTSIZE=5000
export HISTFILE=~/.zsh_history
export SAVEHIST=$HISTSIZE
setopt append_history
setopt inc_append_history
setopt share_history
setopt hist_ignore_dups
# =========== PATH ===========
# do not add anything to $path if it's there already
typeset -U path
path=(/usr/local/bin $path)

# =========== RBENV ===========
# to enable shims and autocompletion for rbenv
eval "$(rbenv init -)"

# =========== ALIASES ===========
source ~/.zsh/aliases.zsh

export CLASSPATH=$CLASSPATH:.

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

# Makes git auto completion faster favouring for local completions
__git_files () {
    _wanted files expl 'local files' _files
}
