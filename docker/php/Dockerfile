FROM php:7-fpm

RUN apt-get update && \
    apt-get install -y libicu-dev && \
    docker-php-ext-install mbstring intl opcache && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    pecl install apcu-5.1.3 && docker-php-ext-enable apcu && \
    echo "date.timezone = Europe/Paris" >> /usr/local/etc/php/conf.d/symfony.ini
