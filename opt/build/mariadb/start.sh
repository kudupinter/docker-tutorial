#!/bin/sh
echo "Starting MariaDB Server..."
docker run --name mariadb \
  --restart unless-stopped \
  -d \
  -v /opt/mariadb-data:/var/lib/mysql \
  -v /opt/conf/mariadb:/etc/mysql/conf.d \
  -e MYSQL_ROOT_PASSWORD=super9secret \
  mariadb-custom