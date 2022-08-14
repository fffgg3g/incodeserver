#!/bin/bash
apt-get -y install wget python3 python3-pip  ffmpeg
wget https://github.com/fffgg3g/incodeserver/raw/master/nginx.conf
systemctl stop nginx
\cp nginx.conf /etc/nginx
mkdir getdowns
chmod 755 -R /root/getdowns
mkdir getdowns/vv
systemctl restart nginx
pip install yt-dlp
pip install -U yt-dlp
yt-dlp -F $1 >yt.txt
sed -n '/audio/w au.txt' yt.txt
sed -n '/video/w vi.txt' yt.txt
sed -n '/audio/{/m4a/p}' au.txt  >au1.txt 
sed -n '/video/{/mp4/p}' vi.txt  >vi1.txt
aunumber=$(sed -n '$p' au1.txt | awk '{print $1}' )
vinumber=$(sed -n '$p' vi1.txt | awk '{print $1}' )
yt-dlp -f $vinumber+$aunumber $1
