#!/bin/bash

set -m
set -e

mysqld_safe &

sleep 10

mysql -u root -e "CREATE DATABASE IF NOT EXISTS demo_docker"
mysql -u root -e "GRANT ALL ON your_db.* to 'root'@'%' IDENTIFIED BY '1234'"
mysql -u root -e "FLUSH PRIVILEGES"

fg

