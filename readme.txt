

codestall.sh安装vscode 端口888     
安装完后自动重启
fcreate.sh 创建flutter web并配置nginx 端口号为80


chmod 777 codestall.sh
./codestall.sh
安装完后自动重启


chmod 777 fcreate.sh 
./fcreate.sh projectname



第一次安装（包含ssh,创建了myapp）
apt install -y screen;screen -S sc1;
##wget https://github.com/fffgg3g/incodeserver/raw/master/vstall.sh&&chmod 777 vstall.sh&& ./vstall.sh  
wget https://github.com/fffgg3g/incodeserver/raw/master/vstall.sh&&chmod 777 vstall.sh&&nohup ./vstall.sh &


新建一个项目
screen;screen -S sc2
#./fcreate.sh projectname
nohup .fcreate.sh &


安装android(安装android开发环境)
screen;screen -S sc3
##wget https://github.com/fffgg3g/incodeserver/raw/master/anstall.sh&&chmod 777 anstall.sh&&./anstall.sh;
wget https://github.com/fffgg3g/incodeserver/raw/master/anstall.sh&&chmod 777 anstall.sh&&nohup ./anstall.sh &

https://github.com/fffgg3g/incodeserver/raw/master/anstall.sh


安装ssh
#wget https://github.com/fffgg3g/incodeserver/raw/master/pub.sh&&chmod 777 pub.sh&&./pub.sh;
wget https://github.com/fffgg3g/incodeserver/raw/master/pub.sh&&chmod 777 pub.sh&&nohup ./pub.sh &


安装v2ray
wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh

安装v2ray ssh
wget https://github.com/fffgg3g/incodeserver/raw/master/pub.sh&&chmod 777 pub.sh&&./pub.sh&&wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh

安装ytdown，安装后用yudd url 下载
wget -qO- https://raw.githubusercontent.com/fffgg3g/incodeserver/master/v2ytdinstall.sh | bash



vps测试
基本测试不跑分  wget -qO- bench.sh | bash
gbk跑分        curl -sL yabs.sh | bash
综合测试      wget -qO- https://raw.githubusercontent.com/fffgg3g/incodeserver/master/benchsum.sh | bash
回城路由        wget -qO- git.io/besttrace | bash
三网测速        bash <(curl -Lso- https://git.io/superspeed.sh)    

