# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit -a'
alias gch='git checkout'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gd='git diff | $EDITOR'
alias gl='git log'
alias gs='git status -sb'

alias push='git push'
alias pull='git pull'
alias merge='git merge'

alias such=git
alias very=git
alias wow='git status'

# Running the daily git commands
alias dailytask="gco master && pull && git fetch --prune"
alias deletelocal="git branch --merged | egrep -v \"(^\*|main|master|dev)\" | xargs git branch -d"
alias deleteremote="git push --delete origin"

alias gac='git add -A && git commit -m'
alias ge='git-edit-new'
