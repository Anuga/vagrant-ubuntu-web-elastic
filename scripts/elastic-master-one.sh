#!/usr/bin/env bash

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list

apt-get update
apt-get install -y apt-transport-https openjdk-8-jre elasticsearch kibana

update-rc.d elasticsearch defaults 95 10
update-rc.d kibana defaults 95 10

cp /vagrant/elastic/elastic-master-one.yml /etc/elasticsearch/elasticsearch.yml

service elasticsearch restart
