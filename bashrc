#
#echo executing .bashrc
ulimit -t 900
alias +=pushd
if [ ${BASH_VERSION%%.*} = 1 ]; then
   alias -=popd
else
   alias -- -=popd
fi
alias ~=dirs

# make ls colorful
force_color_prompt=yes
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls -CF $LS_OPTIONS'

alias ll='ls -l $LS_OPTIONS'
alias gd=pushd
#alias /='history 20'
alias texclean='rm *.aux *.blg *.dvi *.glo *.idx *.lof *.log *.lot *.toc'

#set filec
export PS1='[\u:\w:\!] '
set notify
set history=100

export PATH="$HOME/bin:$PATH"
