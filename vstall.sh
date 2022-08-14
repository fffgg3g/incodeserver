#!/bin/bash
echo "bash start"
apt-get update
apt-get -y install curl wget zip git golang clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev nginx python3 python3-pip  ffmpeg
pip install yt-dlp
pip install -U yt-dlp
#install ssh
mkdir /root/.ssh
wget https://github.com/fffgg3g/incodeserver/archive/refs/heads/master.zip
unzip master.zip
cat /root/incodeserver-master/gongmi.gongmi >> /root/.ssh/authorized_keys
cat /root/incodeserver-master/readme2.txt >> /root/.ssh/pr
chmod 755 /root
chmod 755 /root/.ssh/authorized_keys
chmod 600 /root/.ssh/pr
sed -i '$a\AuthorizedKeysFile     /root/.ssh/authorized_keys'  /etc/ssh/sshd_config
sed -i '$a\RSAAuthentication yes'  /etc/ssh/sshd_config
sed -i '$a\PubkeyAuthentication yes'  /etc/ssh/sshd_config
service sshd restart
#install ssh over
cp -r /root/incodeserver-master/* /root
chmod 755 /root codestall.sh  fcreate.sh
mkdir /root/fcode
chmod 777 /root/fcode
curl -fsSL https://code-server.dev/install.sh | sh
#systemctl restart code-server@$USER
systemctl enable --now code-server@$USER
systemctl enable --now nginx
sleep 30s
sed -i '/bind-addr:/c\bind-addr: 0.0.0.0:888' /root/.config/code-server/config.yaml
sed -i '/password:/c\password: rui333435' /root/.config/code-server/config.yaml
git clone https://github.com/flutter/flutter.git -b stable
sed -i '$a\export PATH="$PATH:/root/flutter/bin"' /etc/profile
sleep 1m
source /etc/profile
flutter precache
sleep 1m
cd /root/fcode
flutter create $1
sleep 30
cd $1
flutter build web
sleep 30
mkdir /root/fcode/myapp/build/web/appdir
sed -i '65d;85d;88d' /etc/nginx/sites-enabled/default
sed -i 's/80/889/g' /etc/nginx/sites-enabled/default
sed -i "/root/c\root /root/fcode\/$1/build/web;" /etc/nginx/sites-enabled/default
sed -i "/location \/ {/a\autoindex_localtime on;"  /etc/nginx/sites-enabled/default
sed -i "/location \/ {/a\autoindex_exact_size off;"  /etc/nginx/sites-enabled/default
sed -i "/location \/ {/a\autoindex on;"  /etc/nginx/sites-enabled/default
reboot
