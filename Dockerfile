FROM ubuntu:latest

LABEL maintainer="diforg@gmail.com"
LABEL description="PHP 8.1"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install \
    php8.1 \
    php8.1-zip \
    php8.1-bcmath \
    php8.1-gd \
    php8.1-curl \
    php8.1-xml \
    php8.1-mbstring \
    php8.1-pdo-firebird \
    curl \
    zip unzip \
    mcrypt \
    vim \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR "/application"
