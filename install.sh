#!/bin/bash

apt update
apt install golang curl git
go install github.com/tomnomnom/httprobe@latest
go get -u github.com/tomnomnom/assetfinder
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip
unzip findomain-linux-i386.zip
chmod +x findomain
mv findomain /usr/bin/findomain
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
pip install -r requirements.txt
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest




#for amass download from here
#https://github.com/OWASP/Amass/releases/tag/v3.19.3
#add binary to your path
