#!/bin/bash


echo "server start stop"

select yn in "Start" "Stop" ; do

	case $yn in
	Start) echo "server start" 
	sudo /etc/init.d/php5-fpm restart
	sudo /etc/init.d/nginx restart

	;;
	Stop) echo "server stop"
	sudo /etc/init.d/php5-fpm stop
	sudo /etc/init.d/nginx stop
	esac
	exit
done


