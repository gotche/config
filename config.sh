#!/bin/bash

# replace template with my own user's home
sed "s#\${home}#$HOME#" salt/minion.tpl > salt/minion

# call high state on the minion
sudo salt-call -c ~/code/config/salt --local state.highstate
