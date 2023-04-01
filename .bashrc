# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# some more ls aliases
alias cat='bat'
alias ls='exa --icons'
alias ex='explorer.exe'
alias jupyter='nohup jupyter notebook >> ~/Log/jupyter.log&'
export RANGER_LOAD_DEFAULT_RC=FALSE
# export PS1='[\[\e[01;05;32m\]\u\[\e[00m\]@\[\e[01;33m\]\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\]]\$ '
export PS1=' \[\033[01;35m\][\[\033[01;32m\]`echo $STY | cut -d . -f2`\h\[\033[01;31m\] \u \w\[\033[31m\]\[\033[01;35m\]]\[\033[01;36m\]\$\[\033[00m\] '
export PATH=$PATH:~/.local/bin/
export PATH=$PATH:/usr/local/lib
export BAT_THEME="OneHalfDark"
export HOST=$(ip route | grep default | awk '{print $3}')
export DISPLAY=:0.0
export MANPATH=${MANPATH}:/usr/local/texlive/2022/texmf-dist/doc/man
export INFOPATH=${INFOPATH}:/usr/local/texlive/2022/texmf-dist/doc/info
export PATH=${PATH}:/usr/local/texlive/2022/bin/x86_64-linux
export PATH=${PATH}:/home/xfw/.cargo/bin
export PATH=/opt/mpich/bin:$PATH
export LD_LIBRARY_PATH=/opt/mpich/lib:$LD_LIBRARY_PATH
# use ctrl x + ctrl e to open the nvim then we can edit the command with nvim
export EDITOR=nvim
# proxy on
function proxy_on(){
    ipaddr=$(ip route | grep default | awk '{print $3}')
    export ALL_PROXY=$ipaddr:7890
    export http_proxy=$ipaddr:7890
    export https_proxy=$ipaddr:7890
    echo -e "proxy has been set on"
}

# proxy_off
function proxy_off(){
    unset ALL_PROXY
    unset http_proxy
    unset https_proxy
    echo -e "proxy has been set off"
}
