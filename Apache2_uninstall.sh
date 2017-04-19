#!/bin/bash

sudo service apache2 stop
sudo apt-get -y remove apache2
sudo apt-get -y autoremove --purge
sudo apt-get -y remove --purge apache2
sudo apt-get clean
whereis apache2
sudo rm -rf /etc/apache2
sudo rm -rf /var/www
sudo rm -rf /home/pi/apache_server
sudo source /etc/profile
sudo rm -rf /home/pi/server_apache
