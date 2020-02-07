#!/bin/bash


sudo service mysql start
sudo mysql -u root -e 'CREATE DATABASE `ojs` DEFAULT CHARACTER SET utf8'

sudo mysql -u root -e "GRANT ALL ON \`ojs\`.* TO \`ojs\`@localhost IDENTIFIED BY 'ojs'"

sudo mysql -u root -p ojs < tests/test_db.sql

export DBTYPE=MySQLi

