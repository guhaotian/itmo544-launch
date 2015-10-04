#!/bin/bash


cd

cd Downloads
cd itmo544-env
aws ec2 run-instances --image-id ami-$1 --count $2 --instance-type $3 --key-name $4 --security-group-ids $5 --subnet-id $6 --associate-public-ip-address --user-data file://install-webserver.sh --debug
echo "hello"> /temp/hello.txt
