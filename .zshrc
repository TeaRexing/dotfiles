# =============================================================================
# === Exports
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/Scripts:$PATH
export ZSH="/home/patrick/.config/zsh/oh-my-zsh"
export ZSH_CUSTOM="/home/patrick/.config/zsh/zsh-custom"
export ZK_NOTEBOOK_DIR=/"home/patrick/Dokumente/Notizen"
# /============================================================================
# =============================================================================
# === Theming
# SHELL
# ZSH
ZSH_THEME="bullet-train"
BULLETTRAIN_PROMPT_SEPARATE_LINE=false
BULLETTRAIN_PROMPT_ORDER=(
	dir
	git
 	status
)
BULLETTRAIN_STATUS_EXIT_SHOW=true
# /============================================================================
# =============================================================================
# === Commands
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# /============================================================================
# =============================================================================
# === Plugins
# == Internal
plugins=(git pass tmux wd fzf)
# plugins=(git pass wd z)
# /============================================================================
# =============================================================================
# === User
# == Aliases
alias rc="source ~/.zshrc"
alias c="clear"
alias vim="nvim"
alias pc="pass clip"
# /============================================================================
# =============================================================================
# === Source
source $ZSH/oh-my-zsh.sh
# /============================================================================
