#!/usr/bin/python3
import os
import subprocess
import time

print("owncloud Apache ...... identify installing")
time.sleep(2)

if os.path.isfile("/home/pi/server_apache/owncloud/index.php"):
	subprocess.call('./Apache2_uninstall.sh' , shell=True)
else:
	subprocess.call('./Apache2_install.sh' , shell=True)

