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
alias ls='ls -CF'
alias ll='ls -l'
alias gd=pushd
#alias /='history 20'
alias texclean='rm *.aux *.blg *.dvi *.glo *.idx *.lof *.log *.lot *.toc'

#set filec
export PS1='[\u:\w:\!] '
set notify
set history=100
