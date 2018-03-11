source ~/.zshrc-ohmyzsh
source ~/.zsh-local

unset GREP_OPTIONS
alias grep="grep --color=auto --exclude-dir=.cvs --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn"

alias gdb="gdb -q"
alias gt="git status"
alias zshrc="vim ~/.zsh/.zshrc; source ~/.zshrc"
alias m="./make.sh"
alias t="./test.sh"
alias r="./run.sh"
alias d="./debug.sh"
alias start-console-java="source ~/.zsh/start-console-java.sh"
alias gcloud-start="source ~/.zsh/gcloud-start.sh"
alias gsu="git submodule update --init --recursive --remote"
#alias gcloud-start="unset _JAVA_OPTIONS; export PATH=/usr/local/bin/py2:$PATH; source /home/antek/dev/google-cloud-sdk/path.zsh.inc"

export PATH="$PATH:/home/antek/.gem/ruby/2.2.0/bin"
export EDITOR="vim"
#export TERM="xterm-256color"
#export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"
export PATH="$PATH"

_zshrc_GitStatus() {
    echo "git status"
    git status
    zle accept-line
}

_zshrc_GitPull() {
    echo "git pull"
    git pull
    zle accept-line
}

_zshrc_GitPush() {
    echo "git push"
    git push
    zle accept-line
}

_zshrc_GitAddA() {
    echo "git add -a"
    git add -a
    zle accept-line
}

_zshrc_GitCommit() {
    echo "git commit"
    git commit
    zle accept-line
}

_zshrc_GitDiff() {
    echo "git diff"
    git diff
    zle accept-line
}

zle -N _zshrc_GitStatus
zle -N _zshrc_GitPull
zle -N _zshrc_GitPush
zle -N _zshrc_GitAddA
zle -N _zshrc_GitCommit
zle -N _zshrc_GitDiff

bindkey "\et" _zshrc_GitStatus     # Alt+t
bindkey "\ea" _zshrc_GitAddA       # Alt+a
bindkey "\ec" _zshrc_GitCommit     # Alt+c
bindkey "\ed" _zshrc_GitDiff       # Alt+d
bindkey "\e[1;3B" _zshrc_GitPull   # Alt+Down arrow
bindkey "\e[1;3A" _zshrc_GitPush   # Alt+Up arrow

# To get the string identificator for each key, open a terminal emulator,
# and use:
#
# $ ^V<your_key>
#
# i.e.: ^V<Shift-F10> displays:
#
# $ ^[[21;2~
#
# Then, replace leading ^[ with \e and you're done.
#
# (valid declaration for Shift-F10: bindkey "\e[21;2~" _zshrc_Run)

setopt nohup
setopt append_history no_inc_append_history no_share_history

