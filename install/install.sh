#!/bin/bash

rm -Rf /var/www/html
ln -s /app/www /var/www/html
chown data:data /var/www/html

service mariadb start
sleep 2
mysql < install/install.sql
service mariadb stop
