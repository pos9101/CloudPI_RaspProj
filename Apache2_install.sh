#!/bin/bash

echo "start to installing owncloud on Apache2"

select yn in "Yes" "No" ; do
	case $yn in
	Yes) echo "install"

sudo apt-get -y install update
sudo apt-get -y install apache2
sudo apt-get -y install php5
sudo /etc/init.d/apache2 restart
sudo apt-get -y install php5-mysql
sudo apt-get -y install php5-gd php5-curl php5-json php5-intl php5-mcrypt php5-imagick mysql-server
sudo /etc/init.d/mysql restart
source /etc/apache2/envvars
/usr/sbin/apache2 -V
php5 -v
sed -i 's:upload_max_filesize = 2M:upload_max_filesize = 1048M:' /etc/php5/fpm/php.ini
sed -i 's:post_max_size = 8M:post_max_size = 1048M:' /etc/php5/fpm/php.ini

cd /home/pi/
mkdir server_apache
sudo sed -i 's:#</Directory>:&\n<Directory /home/pi/server_apache/>\n\tOptions Indexes FollowSymLinks\n\tAllowOverride None\n\tRequire all granted\n</Directory>:' /etc/apache2/apache2.conf
wget https://download.owncloud.org/community/owncloud-9.1.4.tar.bz2
tar -xvf owncloud-9.1.4.tar.bz2
sudo mv owncloud/ server_apache/
sudo rm -rf owncloud-9.1.4.tar.bz2
sudo sed -i 's:/var/www/html:/home/pi/server_apache:' /etc/apache2/sites-enabled/000-default.conf
sudo sed -i 's:/var/www/html:/home/pi/server_apache:' /etc/apache2/sites-available/000-default.conf

sudo chown -R www-data:www-data /home/pi/server_apache/owncloud/
sudo /etc/init.d/apache2 restart
source /etc/apache2/envvars
	;;
	No) echo "cancel"
	;;
	esac
	exit
done
