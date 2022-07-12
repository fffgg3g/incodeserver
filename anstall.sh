#!bin/bash
wget https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip -O ancmd.zip
mkdir /root/android-sdk;mkdir /root/android-sdk/cmdline-tools
unzip -d /root/android-sdk/cmdline-tools/  ancmd.zip
cp  -r /root/android-sdk/cmdline-tools/cmdline-tools  /root/android-sdk/cmdline-tools/latest
rm -rf  /root/android-sdk/cmdline-tools/cmdline-tools
cd /root/android-sdk/cmdline-tools/latest/bin/
yes | ./sdkmanager --install  "build-tools;31.0.0" "platforms;android-31" "platform-tools" "cmdline-tools;latest"
sleep 1m
yes | ./sdkmanager --licenses
sed -i '$a\export ANDROID_HOME="/root/android-sdk"'  /etc/profile
sed -i '$a\export PATH="$PATH:$ANDROID_HOME/platform-tools"'  /etc/profile
sed -i '$a\export PATH="$PATH:$ANDROID_HOME/platform"'  /etc/profile
source /etc/proile
