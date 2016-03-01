#!/usr/bin/env sh

#Set locale to en_US.utf8. Needed for successful unicode handling
update-locale LC_ALL=en_US.utf8

ES_URL="https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.2.0/elasticsearch-2.2.0.deb"

add-apt-repository ppa:brightbox/ruby-ng

apt-get update

#Install Java
apt-get install -y openjdk-7-jre vim git curl build-essential ruby2.2 ruby2.2-dev
gem install bundler

#Download ES .deb package
wget $ES_URL

#Install package
dpkg -i elasticsearch-2.2.0.deb

#Start ES automatically
update-rc.d elasticsearch defaults 95 10

/usr/share/elasticsearch/bin/plugin install analysis-icu
/usr/share/elasticsearch/bin/plugin install lmenezes/elasticsearch-kopf
