#!/bin/bash

echo "owncloud 삭제를 시작합니다"

select yn in "Yes" "No" ; do
	case $yn in
	Yes) echo "uninstall"


	#서버종료
#	sudo /etc/init.d/php5-fpm stop
#	sudo /etc/init.d/nginx stop

	#패키지삭제
#	rm -f owncloud-9.1.4.tar.bz2


	#ip수정
#	sudo sed -i "s/iface eth0 inet static/iface eth0 inet manual/" /etc/network/interfaces
#	sudo sed -i "/192/d" /etc/network/interfaces
#	sudo sed -i "/netmask/d" /etc/network/interfaces
#	sudo sed -i "/broadcast/d" /etc/network/interfaces	



	#패키지 삭제
#	sudo apt-get remove nginx openssl ssl-cert php5-cli php5-sqlite php5-gd php5-common php5-cgi sqlite3 php-pear php-apc curl libapr1 libtool curl libcurl4-openssl-dev php-xml-parser php5 php5-dev php5-gd php5-fpm memcached php5-memcache varnish

#	sudo apt-get remove php5-curl
#	sudo rm -rf  /var/www/owncloud


	#php설정 변경
#	sudo sed -i "s/CONF_SWAPSIZE\=512/CONF_SWAPSIZE\=100/" /etc/dphys-swapfile

#	sudo sed -i "s/listen \= 127\.0\.0\.1\:9000/listen \= \/var\/run\/php5\-fpm\.sock/" /etc/php5/fpm/pool.d/www.conf


	echo "owncloud 삭제완료"
	;;


	No) echo "cancel"
	;;
	esac
	exit
done












