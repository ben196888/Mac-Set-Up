# Starship prompt
eval "$(starship init zsh)"

# Oh My Zsh core
export ZSH="$HOME/.oh-my-zsh"
plugins=(git gh)
source $ZSH/oh-my-zsh.sh

# GPG: set TTY only if gpg is installed
if command -v gpg >/dev/null 2>&1; then
  export GPG_TTY=$(tty)
fi

# Optional: set default editor to VS Code if installed
if command -v code >/dev/null 2>&1; then
  export EDITOR="code"
fi

# Optional: enable Warp shell block title if running in Warp
if [[ "$TERM_PROGRAM" == "WarpTerminal" ]]; then
  export WARP_ENABLE_SHELL_BLOCK_TITLE=true
fi

# Add user-local bin to PATH if it exists
[ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"

# Numpad key bindings
bindkey -s "^[Op" "0"
bindkey -s "^[On" "."
bindkey -s "^[OM" "^M"
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
bindkey -s "^[Ok" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"

# Alt + Arrow movement
bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
if [ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]; then
  export SDKMAN_DIR="$HOME/.sdkman"
  source "$HOME/.sdkman/bin/sdkman-init.sh"
fi
