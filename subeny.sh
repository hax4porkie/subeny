#!/bin/bash

#using sublist3r
sublist3r -d $1 -o out1.txt

#using subfinder
subfinder -d $1 -o out2.txt

#using assetfinder
assetfinder $1 | tee out3.txt

#using findomain
findomain --target $1 --unique-output out4.txt

#using amass
amass enum -d $1 -o out5.txt

#output cleanup and duplicate removal
cat out2.txt out3.txt out4.txt out5.txt >> out1.txt
rm out2.txt out3.txt out4.txt out5.txt
cat out1.txt | sort -u >> out.txt
rm out1.txt

#check if domains are active
echo "removing innactive domains"
cat out.txt | httprobe | tee output.txt
rm out.txt
