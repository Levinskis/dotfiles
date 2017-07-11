#!/usr/bin/env bash

echo 'Installing dotfiles...'


for file in $(ls -A $PWD) # `ls -A` can be used
do
	if [[ "$file" != .git* ]]; then 	
		if [[ "$file" != *install* ]]; then

			echo "Making link for $file"
			$(ln -s $PWD/$file $HOME/$file)

		fi
	fi
done




