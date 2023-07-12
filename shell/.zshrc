# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

# Hide username in prompt
DEFAULT_USER=`whoami`

plugins=(
	git
	zsh-autosuggestions
	zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles, and then some:
# * ~/.dotfiles-custom can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/shell/.{aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done