#!/usr/bin/env bash

DOT_LIST=(
vim
bash_profile
bashrc
emacs
vimrc
)

REPOPATH=$(pwd)

for DOT_F in "${DOT_LIST[@]}" ; do	
	echo "removing ~/.$DOT_F" 
	rm -r ~/.$DOT_F

	echo "linking -$REPOPATH/$DOT_F"
	ln -s $REPOPATH/$DOT_F ~/.$DOT_F
done