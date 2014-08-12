source ~/.zshrc-ohmyzsh
alias gt="git status"
alias zshrc="vim ~/.zsh/.zshrc; source ~/.zshrc"
alias m="./make.sh"
alias t="./test.sh"
alias r="./run.sh"
alias d="./debug.sh"

export EDITOR="vim"
export TERM="xterm-256color"

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

setopt nohup
