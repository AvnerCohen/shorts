#! /bin/bash
export cur=${PWD##*/}
heroku config:add `cat ~/.dotfiles/private_data/$cur.zsh | cut -f 2 -d " " | tr "\n" " " | tr -d "'"`
#heroku config:add
