# Pure
#
# # by Sindre Sorhus with modifications by Max Prokopiev
#
# # https://github.com/sindresorhus/pure
# # https://github.com/juggler/pure
#
# # MIT License

# VCS:
# %s - current version control system, like git or svn.
# %r - name of the root directory of the repository
# %S - current path relative to the repository root directory
# %b - branch information, like master
# %a - current action (rebase/merge)
# %m - show information about stashes
# %u - show unstaged changes in the repository
# %c - show staged changes in the repository

# Prompt:
# %F - color dict
# %f - reset color
# %~ - current path
# %* - time
# %n - username
# %m - shortname host
# %(?..) - prompt conditional %(condition.true.false)

prompt_precmd() {
	# git info
	vcs_info
}

prompt_setup() {
	prompt_opts=(cr subst percent)

	autoload -Uz add-zsh-hook
	autoload -Uz vcs_info

	add-zsh-hook precmd prompt_precmd

	zstyle ':vcs_info:*' enable git
  zstyle ':vcs_info:*' disable bzr cdv darcs mtn svk tla svn cvs

	zstyle ':vcs_info:git*' formats ' %b'
	zstyle ':vcs_info:git*' actionformats ' %b|%a'

  # left prompt
	PROMPT='%F{blue}%~%f %F{magenta}❯%f '
	# right prompt
	RPROMPT='%F{8}${vcs_info_msg_0_} %f'
}

prompt_setup "$@"
