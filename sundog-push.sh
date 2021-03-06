#!/bin/bash

export IPV4=$(cat ~/Documents/Projects/Sundog/ip)
export KEY=~/.ssh/root_tharsis002_digital_ocean
export GIT_SSH_COMMAND="ssh -i $KEY -q"

cd ~/Documents/Projects/Pavonis
git push origin master
ssh -i $KEY root@$IPV4 "cd /srv/www; git pull"
