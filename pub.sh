apt-get update
apt-get -y install wget zip
mkdir /root/.ssh
wget https://github.com/fffgg3g/incodeserver/archive/refs/heads/master.zip
unzip master.zip
cat /root/incodeserver-master/gongmi.gongmi >> /root/.ssh/authorized_keys
cat /root/incodeserver-master/readme2.txt >> /root/.ssh/pr
chmod 600 /root/.ssh/authorized_keys
chmod 700 /root/.ssh
sed -i '$a\AuthorizedKeysFile     /root/.ssh/authorized_keys'  /etc/ssh/sshd_config
sed -i '$a\RSAAuthentication yes'  /etc/ssh/sshd_config
sed -i '$a\PubkeyAuthentication yes'  /etc/ssh/sshd_config
service sshd restart
