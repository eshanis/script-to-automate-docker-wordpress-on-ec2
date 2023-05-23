#!/bin/bash
#install docker
sudo yum -y install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo newgrp ec2-user

#installing docker compose
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

mkdir /home/ec2-user/wordpress
cd /home/ec2-user/wordpress

#get raw file from git hub not the usual path 
#got to the yaml file and click on raw to get the full path
wget https://raw.githubusercontent.com/eshanis/wordpress-docker-compose/main/docker-compose.yml
docker-compose up -d
