# Source interactive Zsh shell config

# iterm2 shell integration
export PS1=${iterm2_prompt_mark}
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

. "${HOME}/.config/zsh/interactive.sh"
. "${HOME}/.config/zsh/login.sh"
. "${HOME}/bin/miniforge3/etc/profile.d/conda.sh"

eval "$(starship init zsh)"
