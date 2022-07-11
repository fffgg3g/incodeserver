#!/bin/bash
echo "bash start"
apt-get update
chmod 777 /root
mkdir /root/fcode
chmod 777 /root/fcode
apt-get -y install curl wget git golang clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev nginx
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
reboot
