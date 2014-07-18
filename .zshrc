source ~/.zshrc-ohmyzsh
alias gt="git status"

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

zle -N _zshrc_GitStatus
zle -N _zshrc_GitPull
zle -N _zshrc_GitPush

bindkey "\et" _zshrc_GitStatus     # Alt+t
bindkey "\e[1;3B" _zshrc_GitPull   # Down arrow
bindkey "\e[1;3A" _zshrc_GitPush   # Up arrow
