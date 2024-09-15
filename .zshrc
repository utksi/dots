# Source interactive Zsh shell config

. "${HOME}/.config/zsh/interactive.sh"
. "${HOME}/.config/zsh/login.sh"

eval "$(starship init zsh)"

export STARSHIP_CONFIG=~/.config/starship/starship.toml

DISABLE_UNTRACKED_FILES_DIRTY="true"

# neofetch

alias ci='code-insiders -r'

alias radion='~/.config/radion/radion.sh'

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# alias clear_logs="sudo rm /var/log/asl/*.asl"
