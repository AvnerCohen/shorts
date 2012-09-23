#!/bin/bash
git commit -am $1
git push origin 
isHeroku=`git remote -v | grep heroku | wc -l`
echo ${isHeroku}
ifeq ${isHeroko},1
 git push heroku 
endif
