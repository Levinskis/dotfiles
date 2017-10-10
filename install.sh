#!/usr/bin/env bash

echo 'Installing dotfiles...'
sudo apt-get update 
sudo apt-get install  git-core vim i3 feh tmux mdp -y # lxappearance gtk-chtheme qt4-qtconfig -y


for file in $(ls -A $PWD) # `ls -A` can be used
do
	if [[ "$file" != .git* ]]; then 	
		if [[ "$file" != *install* ]]; then
            if [[ -L ~/$file ]]; then 
                echo "Link for $file already exist!"
            else

                echo "Making link for $file"
                ln -s $PWD/$file ~/$file 2>/dev/null
            fi
		fi
	fi

done


if [[ -e ~/.profile ]]; then # For Debian based distros
    
    if ! grep -q META_COMMENT_1 ~/.profile; then
        
        echo "#META_COMMENT_1" >> ~/.profile
        echo "alias tmux='tmux -2'" >>  ~/.bashrc
        echo "export TERM=xterm-256color" >>  ~/.bashrc
        echo "[[ -r ~/.bashrc ]] && . ~/.bashrc" >>  ~/.profile
        
    fi
fi 

if [[ -e ~/.bash_profile ]]; then # For other distros 

    if ! grep -q META_COMMENT_1 ~/.bash_profile; then
        echo "#META_COMMENT_1" >> ~/.profile
        echo "alias tmux='tmux -2'" >>  ~/.bashrc
        echo "export TERM=xterm-256color" >>  ~/.bashrc
        echo "[[ -r ~/.bashrc ]] && . ~/.bashrc" >>  ~/.bash_profile
    fi
 fi   

 

if [[ ! -d ~/.vimbckp/ ]]; then 
    mkdir ~/.vimbckp/
    mkdir ~/.vimbckp/.backup ~/.vimbckp/.swp ~/.vimbckp/.undo 
fi


ex -u .vim/autoload/plug.vim -c 'source plugins.vim | PlugInstall | quitall'

cd $HOME
mkdir tmp

# Write here custom instalation and compilations

cd $HOME
rm -rf tmp
