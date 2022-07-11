#!/bin/bash
echo 'hellobash'
apt-get update
chmod 777 /root
apt-get -y install curl wget git golang clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev 
curl -fsSL https://code-server.dev/install.sh | sh
#systemctl restart code-server@$USER
systemctl enable --now code-server@$USER
sed -i '/bind-addr:/c\bind-addr: 0.0.0.0:888' /root/.config/code-server/config.yaml
sed -i '/password:/c\password: rui333435' /root/.config/code-server/config.yaml
git clone https://github.com/flutter/flutter.git -b stable
sed -i '$a\export PATH="$PATH:/root/flutter/bin"' /etc/profile
