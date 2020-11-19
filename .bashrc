# Add nano as default editor
export EDITOR=vim
export TERMINAL=lxterminal
export BROWSER=firefox

# Add scripts path
export PATH=$PATH:~/Scripts

alias ls='exa -G'
alias la='exa -la'

# Package sizes
alias pkg_size="expac -H M '%m\t%n' | sort -h"

#cd to todo-app dir
alias cd-todo="cd $HOME/repos/todo-app/"

#config alias for git dotfiles
alias config="git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"

neofetch
