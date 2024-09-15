# Define and export environment variables
# --------------------------------------------- #
export EDITOR="nvim"
export PAGER="less"

# Tell GPG which tty to read input from during credential verification
export GPG_TTY=$(tty)

# For LilyPond inverse search
export LYEDITOR="nvr --servername=/tmp/lilypondsocket +%(line)s %(file)s"
# --------------------------------------------- #

# Additions to PATH
# --------------------------------------------- #
# Python modules installed by Pip
# export PATH="${PATH}:$HOME/.local/bin:/Users/utksi60/MRS/tb2j/scripts"

# Add /opt/homebrew/bin to the PATH
# export PATH="/opt/homebrew/bin:/Applications/:/Users/utksi60/bin/tdep/bin:/Users/utksi60/bin/vaspkit.1.3.5/bin:$PATH"
# export MANPATH="/Users/utksi60/bin/tdep/man:$MANPATH"

# Add /opt/homebrew/lib to the LD_LIBRARY_PATH
# export LD_LIBRARY_PATH="/opt/homebrew/lib:$LD_LIBRARY_PATH"

# Personal scripts
# export PATH="${PATH}:$HOME/scripts:/Users/utksi60/bin/atat"

export PATH="${PATH}:/home/rudeus/bin/xsfconvert/bin"
export PATH=$HOME/.local/bin:$PATH
#
# --------------------------------------------- #
