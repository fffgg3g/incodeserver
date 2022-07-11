#!/bin/bash
echo 'create app'
flutter precache
mkdir /root/fcode
chmod 777 fcode
cd /root/fcode
flutter create $1
sleep 30
cd $1
flutter build web
sleep 30
sed -i "/root/c\root /root/fcode\/$1/build/web;" /etc/nginx/sites-enabled/default
systemctl restart nginx

