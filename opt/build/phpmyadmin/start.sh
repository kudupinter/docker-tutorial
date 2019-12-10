#!/bin/sh
echo "Starting PHPMyAdmin...."
docker run --name phpmyadmin \
  --restart unless-stopped \
  -d \
  -p 8080:80 \
  --link mariadb:db \  
  phpmyadmin/phpmyadmin:latest

