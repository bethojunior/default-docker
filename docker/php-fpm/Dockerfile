FROM phpdockerio/php73-fpm:latest

# Set working directory
WORKDIR "/application"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install php7.3-mysql php-redis \
        php7.3-bcmath php7.3-gd php7.3-gmp php-imagick git apt-utils locales \
    && sed -i 's/# pt_BR.utf8 pt_BR.UTF-8 UTF-8/pt_BR.UTF-8 UTF-8/g' /etc/locale.gen \
    && ln -s /etc/locale.alias /usr/share/locale/locale.alias \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN locale-gen pt_BR.utf8

RUN usermod -u 1000 www-data

ENV LC_TIME pt_BR.utf8
