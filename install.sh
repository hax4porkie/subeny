#!/bin/bash

apt update
apt install golang curl git unzip python3 python3-pip -y

#install httprobe
go install github.com/tomnomnom/httprobe@latest

#install assetfinder
go install github.com/tomnomnom/assetfinder@latest

#install findomains and send binaary to correct folder
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip
unzip findomain-*.zip
chmod +x findomain
mv findomain /usr/bin/findomain

#install subfinder and move to right directory
wget https://github.com/projectdiscovery/subfinder/releases/download/v2.5.3/subfinder_2.5.3_linux_amd64.zip
unzip subfinder_2.5.3_linux_amd64.zip
mv subfinder /usr/bin/subfinder

git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
pip3 install -r requirements.txt
mv sublist3r.py /opt/sublist3r.py
