#!/usr/bin/env bash

/vagrant/scripts/update_upgrade_remove_clean.sh

apt-get install -y apache2 git php php-apcu php-cli php-common php-curl php-dev php-json php-mbstring php-opcache php-pear php-xml php-zip pkg-config libapache2-mod-php re2c unzip

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

pecl install mongodb

echo "extension=mongodb.so" >> `php --ini | grep "Loaded Configuration" | sed -e "s|.*:\s*||"`

service apache2 restart

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"

composer self-update
