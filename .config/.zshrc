# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-history-substring-search
  zsh-wakatime
  fzf-zsh-plugin
  fast-syntax-highlighting
  macos
  sudo
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias top='bpytop'
alias ls='ls --color'
alias ll='ls -ahlF'
alias wuxi1='curl wttr.in/无锡'
alias wuxi2='curl v2.wttr.in/Wuxi'
alias tmux2='zsh <(curl -L zellij.dev/launch)'

# verbose
alias mkdir='mkdir -v'
alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -v'
alias ln='ln -v'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias git-tree='git log --graph --decorate --pretty=oneline --abbrev-commit' 
alias p4="proxychains4"


# vim $(fzf)
alias vf='vim $(fzf --preview "file {}" --preview-window down:1   --inline-info)'


alias cat="bat --plain"

alias a=ansible
alias d=docker
alias v=vagrant
alias ap=ansible-playbook

alias gpc='git pullrequest create $(git branch | grep \* | cut -d " " -f2) master'
alias gcn='git commit -v --no-verify'
alias gme='GIT_COMMITTER_DATE="$(gdate --date=20:43)"; git commit --date $GIT_COMMITTER_DATE'  # private work

# find for hidden files
alias fd='fd -HI'
alias clean-log='\fd -HI -e log -x rm -rf'

# https://www.commandlinefu.com/commands/view/9065/what-is-the-use-of-this-switch-
function manswitch () { man $1 | less -p "^ +$2"; }

# convert milliseconds to verbose datetime
# https://stackoverflow.com/questions/12362562/convert-milliseconds-timestamp-to-date-from-unix-command-line
milliseconds() { echo $(date -d @$(($1 / 1000))) }

alias vg="vagrant global-status"



# -------------------------------- #
# Git
# -------------------------------- #

# Use github/hub


# Go to project root
alias grt='cd "$(git rev-parse --show-toplevel)"'

alias gs='git status'
alias gp='git push'
alias gpf='git push --force'
alias gpft='git push --follow-tags'
alias gpl='git pull --rebase'
alias gcl='git clone'
alias gst='git stash'
alias grm='git rm'
alias gmv='git mv'

alias main='git checkout main'

alias gco='git checkout'
alias gcob='git checkout -b'

alias gb='git branch'
alias gbd='git branch -d'

alias grb='git rebase'
alias grbom='git rebase origin/master'
alias grbc='git rebase --continue'

alias gl='git log'
alias glo='git log --oneline --graph'

alias grh='git reset HEAD'
alias grh1='git reset HEAD~1'

alias ga='git add'
alias gA='git add -A'

alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gcam='git add -A && git commit -m'
alias gfrb='git fetch origin && git rebase origin/master'

alias gxn='git clean -dn'
alias gx='git clean -df'

alias gsha='git rev-parse HEAD | pbcopy'

alias ghci='gh run list -L 1'

function glp() {
  git --no-pager log -$1
}

function gd() {
  if [[ -z $1 ]] then
    git diff --color | diff-so-fancy
  else
    git diff --color $1 | diff-so-fancy
  fi
}

function gdc() {
  if [[ -z $1 ]] then
    git diff --color --cached | diff-so-fancy
  else
    git diff --color --cached $1 | diff-so-fancy
  fi
}

###########
# Widgets #
###########

run-and-copy-stdout-widget() {
    local buf="${BUFFER}"
    zle push-line # Clear buffer. Auto-restored on next prompt.
    BUFFER="${buf} | pbcopy"
    zle accept-line
    unset buf # ensure this doesn't end up appearing in prompt expansion
    zle reset-prompt
    return 0
}

zle -N run-and-copy-stdout-widget
bindkey '^Y' run-and-copy-stdout-widget

# [cantino/mcfly: Fly through your shell history. Great Scott!](https://github.com/cantino/mcfly)
eval "$(mcfly init zsh)"

eval $(thefuck --alias)

# bun completions
[ -s "/Users/chenchen/.bun/_bun" ] && source "/Users/chenchen/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/chenchen/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(starship init zsh)"


# cd路径节省
cd () {
	if [[ "$#" != 0 ]]; then
		builtin cd "$@";
		return
	fi
	local dir="$(printf '%s\n' $(fd --type d --hidden --follow . "$HOME/code" | fzf))"
	[[ ${#dir} != 0 ]] || return 0
	builtin cd "$dir" &> /dev/null
}

# RANGER
export RANGER_LOAD_DEFAULT_RC=FALSE


# zoxide
eval "$(zoxide init zsh)"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
