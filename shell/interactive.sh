# Aliases
# --------------------------------------------- #
alias sudo="sudo "

alias grep='grep -n --color=auto'
alias cls='clear'

# improved ls
alias l="lsd"
alias la="lsd -a"
alias ll="lsd -l -G"
alias L="lsd -la"
alias vi='/usr/bin/nvim'
alias imgcat='/usr/bin/timg'
alias sixcat='/usr/bin/img2sixel'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

# Servers
alias tetralith='ssh -X x_utksi@tetralith.nsc.liu.se'
alias sigma='ssh -X x_utksi@sigma.nsc.liu.se'
alias dardel='ssh -X usingh@dardel.pdc.kth.se'
alias alvis='ssh -X singhu@alvis1.c3se.chalmers.se'

# compilers
alias gcc='/usr/bin/gcc'
alias g++='/usr/bin/g++'
alias gfortran='/usr/bin/gfortran'

alias cc='/usr/bin/gcc'
alias CC='/usr/bin/gcc'
alias cxx='/usr/bin/g++'
alias CXX='/usr/bin/g++'
alias fortran='/usr/bin/gfortran'
alias FC='/usr/bin/gfortran'

# mpi
#alias gmpicc='/usr/local/bin/mpicc'
#alias gmpicxx='/usr/local/bin/mpicxx'
#alias gmpic++='/usr/local/bin/mpic++'
#alias gmpifort='/usr/local/bin/mpifort'
#alias gmpif77='/usr/local/bin/mpif77'
#alias gmpif90='/usr/local/bin/mpif90'
#alias gmpirun='/usr/local/bin/mpirun'
#alias gmpiexec='/usr/local/bin/mpiexec'
#alias gmpihydra='/usr/local/bin/mpiexec.hydra'
#alias gmpivars='/usr/local/bin/mpivars'

# Some Git alias
alias gg="git status"
alias ggd="git diff"
alias gga="git add"
alias ggc="git commit -m"
alias ggp="git push"
alias gc="git clone"

## venv
# py-venv
alias opto="source ~/.venv/opto/bin/activate"
alias wannier="source ~/.venv/wannier/bin/activate"

# Applications
alias VESTA="/home/rudeus/bin/VESTA-gtk3-x86_64/VESTA.sh"
alias ci="code-insiders -r"
alias ytaudio='yt-dlp -f bestaudio'
alias ytvideo='yt-dlp -f bestvideo+bestaudio'
# --------------------------------------------- #

