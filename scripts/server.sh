#!/usr/bin/env bash

apt-get install software-properties-common

add-apt-repository ppa:ondrej/php
add-apt-repository ppa:ondrej/apache2

/vagrant/scripts/update_upgrade_remove_clean.sh

apt-get install -y \
apache2 \
git \
php7.2 \
php7.2-apcu \
php7.2-cli \
php7.2-common \
php7.2-curl \
php7.2-dev \
php7.2-json \
php7.2-mbstring \
php7.2-opcache \
# php-pear \
php7.2-xml \
php7.2-zip \
pkg-config \
re2c \
unzip

a2enmod alias
a2enmod expires
a2enmod headers
a2enmod mime
a2enmod mime_magic
a2enmod rewrite
a2enmod session
a2enmod ssl
a2enmod vhost_alias

phpenmod apcu
phpenmod curl
phpenmod json
phpenmod mbstring
phpenmod opcache
phpenmod xml
phpenmod zip

wget http://pear.php.net/go-pear.phar
php go-pear.phar
rm go-pear.phar

pear config-set http_proxy wwwproxy:3128
pear config-set https_proxy wwwproxy:3128

pecl install mongodb

echo "extension=mongodb.so" >> `php --ini | grep "Loaded Configuration" | sed -e "s|.*:\s*||"`

service apache2 restart

# php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
# php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
curl https://getcomposer.org/installer > composer-setup.php
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"
