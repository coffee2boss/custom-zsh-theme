if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"


setopt NO_NOMATCH

# remove highlighted folders in wsl
LS_COLORS=$LS_COLORS:'ow=1;34' ; export LS_COLORS

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh 
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Remove underlining
ZSH_HIGHLIGHT_STYLES[path]='none'

