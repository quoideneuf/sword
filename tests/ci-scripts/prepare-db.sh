#!/bin/bash

mysql -e 'CREATE DATABASE `ojs` DEFAULT CHARACTER SET utf8'

mysql -e "GRANT ALL ON \`ojs\`.* TO \`ojs\`@localhost IDENTIFIED BY 'ojs'"

mysql -u root ojs < tests/test_db.sql


