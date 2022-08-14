#!/bin/bash
apt-get -y install wget python3 python3-pip  ffmpeg
wget https://github.com/fffgg3g/incodeserver/raw/master/nginx.conf
systemctl stop nginx
\cp nginx.conf /etc/nginx
mkdir getdowns
chmod 755 -R /root
chmod 755 -R /root/getdowns
mkdir getdowns/vv
wget -P /usr/local/bin/ https://raw.githubusercontent.com/fffgg3g/incodeserver/master/ytd
chmod 777 /usr/local/bin/ytd
systemctl restart nginx
pip install yt-dlp
pip install -U yt-dlp
