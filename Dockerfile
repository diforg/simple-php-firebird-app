FROM php:8.1.1-fpm

LABEL maintainer="diforg@gmail.com"
LABEL description="PHP 8.1"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install \
    curl \
    zip unzip \
    php-bcmath \
    php-gd \
    php-curl \
    php-xml \
    php-mbstring \
    mcrypt \
    php-pdo-firebird \
    vim \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR "/application"
