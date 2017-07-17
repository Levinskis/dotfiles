#!/usr/bin/env bash

echo 'Installing dotfiles...'

apt-get install  git-core vim i3 feh tmux lxappearance gtk-chtheme qt4-qtconfig -y


for file in $(ls -A $PWD) # `ls -A` can be used
do
	if [[ "$file" != .git* ]]; then 	
		if [[ "$file" != *install* ]]; then

			echo "Making link for $file"
			ln -s $PWD/$file ~/$file 2>/dev/null

		fi
	fi

done


if [[ -e ~/.profile ]]; then # For Debian based distros

    echo "alias tmux='tmux -2'" >>  ~/.bashrc
    echo "[[ -r ~/.bashrc ]] && . ~/.bashrc" >>  ~/.profile
fi 

if [[ -e ~/.bash_profile ]]; then # For other distros 

    echo "alias tmux='tmux -2'" >>  ~/.bashrc
    echo "[[ -r ~/.bashrc ]] && . ~/.bashrc" >>  ~/.bash_profile

 fi   




