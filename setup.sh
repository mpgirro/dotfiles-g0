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
)

echo "setting up binaries"
for BIN_F in "${BIN_LIST[@]}" ; do
	cp $REPOPATH/bin/$BIN_F $HOME/bin/$BIN_F
done


for DOT_F in "${DOT_LIST[@]}" ; do
	echo "removing ~/.$DOT_F"
	rm -r ~/.$DOT_F >/dev/null 2>&1

	echo "linking -$REPOPATH/$DOT_F"
	ln -s $REPOPATH/$DOT_F ~/.$DOT_F
done

echo "sourcing profiles"
source $HOME/.bash_profile
source $HOME/.bashrc

echo "all done. go and have fun!"