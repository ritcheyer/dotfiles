alias reload!='. ~/.zshrc'

# various helpful aliases related to terminal commands
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias sl="ls"                               # in case you spell it wrong it will still work
alias ll="ls -alh"                          # list all files, even the hidden ones
alias lf="du -sh"                           # display directory file size
alias relaod=reload!                        # in case you spell it wrong it will still work
alias reload=reload!                        # in case you spell it wrong it will still work

# Opening Applications
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
alias st='open /Applications/SourceTree.app'
alias code="open /Applications/Visual\ Studio\ Code.app"
alias subl="open /Applications/Sublime\ Text.app"

# editor of choice -- Follow tutorial here: https://www.sublimetext.com/docs/2/osx_command_line.html
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# export EDITOR='code'
# export SVN_EDITOR='code'
# export VISUAL='code'

alias cls='clear' # Good 'ol Clear Screen command

# a function to copy code using Highlight:
# https://gist.github.com/jimbojsb/1630790#gistcomment-1207389
# Further Documentation:
# http://www.andre-simon.de/doku/highlight/en/highlight.php
function light() {
  if [ -z "$2" ]
    then src="pbpaste"
  else
    src="cat $2"
  fi
  $src | highlight -O rtf --syntax $1 --font FiraCode --style darkness --font-size 24 | pbcopy
}
