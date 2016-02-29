#!/usr/bin/env sh

ES_URL="https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.2.0/elasticsearch-2.2.0.deb"

apt-get update

#Install Java
apt-get install -y openjdk-7-jre vim git

#Download ES .deb package
wget $ES_URL

#Install package
dpkg -i elasticsearch-2.2.0.deb

#Start ES automatically
update-rc.d elasticsearch defaults 95 10

