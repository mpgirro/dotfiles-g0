#!/usr/bin/env bash

REPOPATH=$(pwd)

# list of binaries shipped in this repo
BIN_LIST=(
tree
)

# list of dotfiles shipped in this repo
DOT_LIST=(
vim
bash_profile
bashrc
emacs
vimrc
ssh
emacs.d
)

echo "setting up binaries"
mkdir -p $HOME/bin/
for BIN_F in "${BIN_LIST[@]}" ; do
	echo "  ==> $BIN_F"
	cp $REPOPATH/bin/$BIN_F $HOME/bin/$BIN_F
done

echo "linking dotfiles"
for DOT_F in "${DOT_LIST[@]}" ; do
	echo "  ==> $REPOPATH/$DOT_F"
	rm -r ~/.$DOT_F >/dev/null 2>&1
	ln -s $REPOPATH/$DOT_F ~/.$DOT_F
done

echo "sourcing profiles"
source $HOME/.bash_profile
source $HOME/.bashrc

echo "all done. go and have fun!"
