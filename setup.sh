#/bin/bash

sudo apt update
sudo apt install -y nodejs
sudo apt install -y npm
sudo apt install -y mysql-server
sudo apt install -y mysql-client
sudo service mysql start

tar -xvf news_portal.tar.gz
cd news_portal

sudo mysql -e "create user 'gagan'@'localhost' identified by 'password'";
sudo mysql -e "grant all privileges on *.* to 'gagan'@'localhost'";
sudo mysql -u 'gagan' -ppassword -e 'create database news_portal';
sudo mysql -u 'gagan' -ppassword 'news_portal' < news_portal.sql