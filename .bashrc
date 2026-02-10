export PATH="${HOME}/.local/bin":${PATH}

eval "$(fzf --bash)"

eval "$(starship init bash)" 

eval "$(zoxide init bash)"

# Aliases
alias rm='rm -vi'
alias cp='cp -vi'
alias mv='mv -vi'
alias mkdir='mkdir -pv'
alias rebuild='sudo nixos-rebuild switch'
alias gc='nix-collect-garbage' 
alias bumnt='sudo mount /dev/sdb1 /run/media/greg/'
alias spf='superfile'
alias switch='nh os switch'
alias clean='nh clean all --keep-since 4d --keep 4 --ask'
alias search='nh search --limit 3'

HISTSIZE=-1
HISTFILESIZE=-1 
HISTCONTROL=ignoreboth

nitch

MICRO_TRUECOLOR=1
