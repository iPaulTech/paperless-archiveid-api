FROM php:apache-bullseye

#Install pgsql extension with this nice tool
#https://github.com/mlocati/docker-php-extension-installer
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions pgsql

WORKDIR /var/www/html

#Define env vars
ARG dbhost
ARG dbport
ARG dbuser
ARG dbpassword
ARG dbname

#Copy Webserver Folder
COPY www /var/www/html
#Change Rights
RUN chmod -R 777 /var/www/html

#Start Apache on Boot
CMD apachectl -D FOREGROUND

EXPOSE 80
