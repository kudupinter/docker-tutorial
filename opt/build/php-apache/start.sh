#!/bin/sh
echo "Starting Apache + PHP Server..."
docker run --name apache \
  --link mariadb:mysql \
  --restart unless-stopped \
  -d \
  -p 80:80 -p 443:443 \
  -v /opt/conf/apache/php/php.ini:/usr/local/etc/php/php.ini \
  -v /opt/conf/apache/apache2:/etc/apache2 \
  -v /opt/conf/apache/ssl:/etc/ssl/certificates \
  -v /home/www/html:/var/www/html \
  --log-driver json-file \
  --log-opt max-size=50m \
  --log-opt max-file=10 \
  --log-opt labels=apache,php \
  php-apache-custom

