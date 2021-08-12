FROM php:7.2-fpm

RUN apt-get update \
&& apt-get install -y libyaml-dev libcurl4-openssl-dev libssl-dev  libevent-dev wget

RUN docker-php-ext-install sockets

RUN wget http://pecl.php.net/get/event-2.3.0.tgz \
&& tar zxvf event-2.3.0.tgz \
&& mkdir -p /usr/src/php/ext \
&& mv event-2.3.0 /usr/src/php/ext/event \
&& cd /usr/src/php/ext \
&& docker-php-ext-install event


RUN pecl install yaml-2.2.1 \
&& pecl install mongodb-1.7.4 \
&& pecl install event-2.3.0 \
&& pecl install redis-5.2.2 \
&& docker-php-ext-enable redis mongodb yaml \
&& docker-php-ext-install opcache \
&& cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini

RUN  docker-php-ext-install pcntl
