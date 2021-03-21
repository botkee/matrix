#!/bin/bash
# Usage: curl -O https://raw.githubusercontent.com/botkee/matrix/master/kali-matrix-install.sh run && sudo chmod +x run && sudo bash run

sudo apt install -y wget apt-transport-https

sudo wget -O /usr/share/keyrings/riot-im-archive-keyring.gpg https://packages.riot.im/debian/riot-im-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/riot-im-archive-keyring.gpg] https://packages.riot.im/debian/ default main" | sudo tee /etc/apt/sources.list.d/riot-im.list

sudo apt update

cd /tmp/

curl -p --insecure http://ftp.br.debian.org/debian/pool/main/libi/libindicator/libindicator3-7_0.5.0-4_amd64.deb --output libindicator3-7_0.5.0-4_amd64.deb
sudo dpkg -i libindicator3-7_0.5.0-4_amd64.deb -y
curl -p --insecure "http://ftp.br.debian.org/debian/pool/main/liba/libappindicator/libappindicator3-1_0.4.92-8_amd64.deb" --output libappindicator3-1_0.4.92-8_amd64.deb
sudo dpkg --install libappindicator3-1_0.4.92-8_amd64.deb -y

sudo apt install element-desktop

#cleaning
rm libindicator3-7_0.5.0-4_amd64.deb
rm libappindicator3-1_0.4.92-8_amd64.deb
rm run
cd

#optional
#sudo apt-get install libdbusmenu-gtk4
#sudo apt-get install libdbusmenu-gtk3-4
