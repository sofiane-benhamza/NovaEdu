FROM php:7.4-apache

WORKDIR /var/www/html

COPY . .

RUN apt-get update && apt-get upgrade -y \
    && docker-php-ext-install mysqli

EXPOSE 80
