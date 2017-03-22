#!/usr/bin/env bash

apt-get update
apt-get install -y apache2 php php-cli php-common php-curl php-dev php-json php-mbstring php-pear php-xml php-zip libapache2-mod-php

a2enmod alias
a2enmod expires
a2enmod headers
a2enmod http2
a2enmod mime
a2enmod mime_magic
a2enmod rewrite
a2enmod session
a2enmod ssl
a2enmod vhost_alias

phpenmod curl
phpenmod json
phpenmod mbstring
phpenmod openssl
phpenmod xml
phpenmod zip

pecl install mongodb
