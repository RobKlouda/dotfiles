# Default apps
export EDITOR="vim"
export TERMINAL="st"
export TERMINAL_PROG="st"
export BROSWER="firefox"


# Adds ~/.local/bin and subfolders to $PATH
#export PATH="$PATH:${$(find ~/.local/bin -maxdepth 1 -type d -printf %p:)%%:}"
export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"
unsetopt PROMPT_SP 2>/dev/null

# Clean up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export ZDOTDIR="$HOME/.config/zsh"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/.password-store"

[ ! -f "$XDG_CONFIG_HOME/shell/shortcutrc" ] && setsid -f shortcuts >/dev/null 2>&1

[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"

export LC_ALL=en_US.UTF-8
