#!/bin/bash

apt update
apt install golang httprobe assetfinder curl sublist3r
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip
unzip findomain-linux-i386.zip
chmod +x findomain
mv findomain /usr/bin/findomain
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest




#for amass download from here
#https://github.com/OWASP/Amass/releases/tag/v3.19.3
#add binary to your path
