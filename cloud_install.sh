#!/bin/bash

echo "owncloud 설치를 시작합니다"

select yn in "Yes" "No" ; do
	case $yn in
	Yes) echo "install"



	#고정아이피 만들기	
#	sudo sed -i  "s/iface eth0 inet manual/iface eth0 inet static\naddress 192.168.0.11\/24\ngateway 192.168.0.1/" /etc/network/interfaces




	#오타수정
#	sudo sed -i  "s/adress/address/" /etc/network/interfaces
#	sudo sed -i "s/address 192\.168\.0\.11\/24/\taddress 192\.168\.0\.11\/24/" /etc/network/interfaces
#	sudo sed -i "s/gateway 192\.168\.0\.1/\tgateway 192\.168\.0\.1/" /etc/network/interfaces
#	sudo /etc/init.d/networking restart
#	sudo groupadd www-data
#	sudo usermod -a -G www-data www-data




	#패키지 설치
#	sudo apt-get update
#	sudo apt-get install -y nginx openssl ssl-cert php5-cli php5-sqlite php5-gd php5-common php5-cgi sqlite3 php-pear php-apc curl libapr1 libtool curl libcurl4-openssl-dev php-xml-parser php5 php5-dev php5-gd php5-fpm memcached php5-memcache varnish

#	sudo apt-get install -y php5-curl





	#SSL설정
#	sudo openssl req $@ -new -x509 -days 2048 -nodes -out /etc/nginx/cert.pem -keyout /etc/nginx/cert.key
#	sudo chmod 600 /etc/nginx/cert.pem
#	sudo chmod 600 /etc/nginx/cert.key




	#nginx 서버설정
#	sudo chmod 775 /etc/nginx/sites-available/default
#	sudo chmod 775 /home/pi/CloudPI_RaspProj/default
#	sudo cp -f /home/pi/CloudPI_RaspProj/default /etc/nginx/sites-available/
#	sudo sed -i "s/listen \= \/var\/run\/php5\-fpm\.sock/listen \= 127\.0\.0\.1\:9000/" /etc/php5/fpm/pool.d/www.conf
	




	#업로드 파일사이즈 설정
	sudo sed -i "s/upload_max_filesize \= 2M/upload_max_filesize \= 4096M/"	/etc/php5/fpm/php.ini
	sudo sed -i "s/post_max_size \= 8M/post_max_size \= 4096M/"	/etc/php5/fpm/php.ini





	#php설정 변경
#	sudo sed -i "s/CONF_SWAPSIZE\=100/CONF_SWAPSIZE\=512/" /etc/dphys-swapfile




	#서버 재시작
	sudo /etc/init.d/php5-fpm restart
	sudo /etc/init.d/nginx restart



	#ownCloud 설치
#	sudo wget https://download.owncloud.org/community/owncloud-9.1.4.tar.bz2#	sudo tar xvjf owncloud-9.1.4.tar.bz2
#	sudo mv owncloud /var/www/
#	sudo chown -R www-data:www-data /var/www



	echo "owncloud 설치완료"
	echo "cloud URL: 192.168.0.111"













	;;
	No) echo "cancel"
	;;
	esac
	exit
done


