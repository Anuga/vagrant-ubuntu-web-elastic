#!/usr/bin/env bash

curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -

/vagrant/scripts/update_upgrade_remove_clean.sh

sudo apt-get install -y nodejs
