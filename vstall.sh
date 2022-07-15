#!/bin/bash
echo "bash start"
apt-get update
apt-get -y install curl wget zip git golang clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev nginx
#install ssh
mkdir /root/.ssh
wget https://github.com/fffgg3g/incodeserver/raw/master/gongmi.gongmi -O /root/.ssh/ras.pub
cat /root/.ssh/ras.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
chmod 700 /root/.ssh
sed -i '$a\AuthorizedKeysFile     /root/.ssh/authorized_keys'  /etc/ssh/sshd_config
sed -i '$a\RSAAuthentication yes'  /etc/ssh/sshd_config
sed -i '$a\PubkeyAuthentication yes'  /etc/ssh/sshd_config
service sshd restart
#install ssh over
sleep 1m
wget https://github.com/fffgg3g/incodeserver/archive/refs/heads/master.zip
unzip master
cp -r incodeserver-master/* .
chmod 755 /root codestall.sh  fcreate.sh
mkdir /root/fcode
chmod 777 /root/fcode
curl -fsSL https://code-server.dev/install.sh | sh
#systemctl restart code-server@$USER
systemctl enable --now code-server@$USER
systemctl enable --now nginx
sleep 1m
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
sed -i '65d;85d' /etc/nginx/sites-enabled/default
sed -i "/root/c\root /root/fcode\/$1/build/web;" /etc/nginx/sites-enabled/default
reboot
