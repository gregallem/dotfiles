export PATH="${HOME}/.local/bin":${PATH}

export EDITOR="hx"

eval "$(fzf --bash)"

eval "$(starship init bash)" 

eval "$(zoxide init bash)"

# Aliases
alias rm='rm -vi --preserve-root'
alias cp='cp -vi'
alias mv='mv -vi'
alias mkdir='mkdir -pv'
alias rebuild='sudo nixos-rebuild switch'
alias gc='nix-collect-garbage' 
alias switch='nh os switch'
alias clean='nh clean all --keep-since 4d --keep 3 --ask'
alias search='nh search --limit 3'
alias pi='ssh pi@192.168.20.70'
alias spf='superfile'

HISTSIZE=-1
HISTFILESIZE=-1 
HISTCONTROL=ignoreboth

fastfetch --config neofetch

function y() {
	local tmp cwd; tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd" || builtin true
	command rm -f -- "$tmp"
}
