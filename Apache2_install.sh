#!/bin/bash

sudo apt-get -y install update
sudo apt-get -y install apache2
sudo apt-get -y install libapache2-mod-auth-mysql
sudo apt-get -y install mysql-server mysql-client
sudo apt-get -y install php5
sudo apt-get -y install php5-common php5 libapache2-mod-php5
sudo apt-get -y install php5-mysql
sudo /etc/init.d/apache2 restart
sudo /etc/init.d/mysql restart
source /etc/apache2/envvars
/usr/sbin/apache2 -V

cd /home/pi/
mkdir server_apache
sudo sed -i 's:#</Directory>:&\n<Directory /home/pi/server_apache/>\n\tOptions Indexes FollowSymLinks\n\tAllowOverride None\n\tRequire all granted\n</Directory>:' /etc/apache2/apache2.conf
wget https://download.owncloud.org/community/owncloud-9.1.4.tar.bz2
tar -xvf owncloud-9.1.4.tar.bz2
sudo mv owncloud/ server_apache/
sudo rm -rf owncloud-9.1.4.tar.bz2
sudo sed -i 's:/var/www/html:/home/pi/server_apache:' /etc/apache2/sites-enabled/000-default.conf
sudo /etc/init.d/apache2 restart
source /etc/apache2/envvars
