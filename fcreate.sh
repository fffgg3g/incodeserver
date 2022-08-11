#!/bin/bash
echo 'create app'
flutter precache
cd /root/fcode
flutter create $1
sleep 30
cd $1
flutter build web
sleep 30
cp /root/appdir.sh /root/fcode/$1
chmod 777 /root/fcode/$1/appdir.sh
sed -i "/root/c\root /root/fcode\/$1/build/web;" /etc/nginx/sites-enabled/default
reboot


