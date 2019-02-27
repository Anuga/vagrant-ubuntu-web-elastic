#!/usr/bin/env bash

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list

apt-get install apt-transport-https

/vagrant/scripts/update_upgrade_remove_clean.sh

apt-get install -y \
elasticsearch \
kibana

update-rc.d elasticsearch defaults 95 10
update-rc.d kibana defaults 95 10

cp /vagrant/configs/master-one-elastic.yml /etc/elasticsearch/elasticsearch.yml
cp /vagrant/configs/master-one-kibana.yml /etc/kibana/kibana.yml

service elasticsearch restart
