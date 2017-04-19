# CloudPI_RaspProj


==========================
OwnCloud on Apache2

easy way to install and uninstall owncloud on Apache2

$python3 owncloud_on_Apache.py

upper command is simple way to install and remove Owncloud
python file use 2files which are Apache2_install.sh and Apache2_uninstall.sh
It is written in Shell Script Language

upload max size is 1048M ,while Upload default max size of Owncloud is 2M 
if you want to change max size, fix /etc/php5/fpm/php.ini. 

upload_max_filesize = 2M  

is a sentence which you change.

*Us H/W environment is raspberry PI 3 which installed Raspbian

Good Luck. 

==========================
nginx 서버를 이용한 라즈베리 클라우드 

berry_semi.py : owncloud 설치여부 판단, 설치나 삭제를 실행

cloud_install.sh : owncloud 원클릭 설치, server start 

cloud_uninstall.sh : owncloud 원클릭 삭제

default : php 설정파일, 설치시 필요


===========================
