FROM php:7.1

RUN apt-get update && \
    apt-get install -y graphviz zlib1g-dev libicu-dev g++ && \
    apt-get autoclean

RUN docker-php-ext-configure intl && \
    docker-php-ext-install intl

ADD http://www.phpdoc.org/phpDocumentor.phar /usr/bin/phpDocumentor

RUN chmod 744 /usr/bin/phpDocumentor