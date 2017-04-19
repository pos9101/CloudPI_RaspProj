#!/bin/bash

echo "start to uninstalling owncloud on Apache2"

select yn in "Yes" "No" ; do
        case $yn in
        Yes) echo "Uninstall"

sudo service apache2 stop
sudo apt-get -y remove --purge apache2
sudo apt-get clean
whereis apache2
sudo rm -rf /etc/apache2
sudo rm -rf /var/www
sudo rm -rf /home/pi/apache_server
sudo source /etc/profile
sudo rm -rf /home/pi/server_apache
sudo apt-get -y remove --purge libapache2-mod-auth-mysql
sudo apt-get -y remove --purge mysql-server mysql-client
sudo apt-get -y purge mysql-common
sudo rm -rf /var/log/mysql
sudo rm -rf /var/log/mysql.*
sudo rm -rf /var/lib/mysql
sudo rm -rf /etc/mysql


sudo apt-get -y remove --purge php5
sudo apt-get -y remove php5-common
sudo apt-get -y remove --purge php5-mysql
#dpkg --get-selections | grep "mysql"
#sudo apt-get -y --purge remove mysql
#sudo apt-get -y autoremove mysql
#sudo apt-get -y autoclean mysql


sudo apt-get -y autoremove 
sudo aptitude -f -y install
source /etc/profile

	;;
        No) echo "canceled"
        ;;
        esac
        exit
done

