#!/usr/bin/python3
import os
import subprocess
import time

print("owncloud 설치여부를 확인중 입니다....")
time.sleep(3)


if os.path.isfile("owncloud-9.1.4.tar.bz2"):
	subprocess.call ('./cloud_uninstall.sh',shell=True)
else:
	subprocess.call ('./cloud_install.sh',shell=True)

