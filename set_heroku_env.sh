#! /bin/bash
## this will reuse the private_data folder with the name as current folder and will created the variable on the 
## equivalent heroku app
export cur=${PWD##*/}
heroku config:add `cat ~/.dotfiles/private_data/$cur.zsh | cut -f 2 -d " " | tr "\n" " " | tr -d "'"`
#heroku config:add
