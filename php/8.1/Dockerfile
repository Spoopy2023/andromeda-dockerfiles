# Use the official Alpine image as a base
FROM alpine:latest

# Set environment variables
ENV USER=container
ENV HOME=/home/container

# Install necessary packages
RUN apk --update --no-cache add \
    curl \
    ca-certificates \
    nginx \
    php8.1 \
    php8.1-xml \
    php8.1-exif \
    php8.1-fpm \
    php8.1-session \
    php8.1-soap \
    php8.1-openssl \
    php8.1-gmp \
    php8.1-pdo_odbc \
    php8.1-json \
    php8.1-dom \
    php8.1-pdo \
    php8.1-zip \
    php8.1-mysqli \
    php8.1-sqlite3 \
    php8.1-pdo_pgsql \
    php8.1-bcmath \
    php8.1-gd \
    php8.1-odbc \
    php8.1-pdo_mysql \
    php8.1-pdo_sqlite \
    php8.1-gettext \
    php8.1-xmlreader \
    php8.1-bz2 \
    php8.1-iconv \
    php8.1-pdo_dblib \
    php8.1-curl \
    php8.1-ctype \
    php8.1-phar \
    php8.1-fileinfo \
    php8.1-mbstring \
    php8.1-tokenizer \
    php8.1-simplexml

# Copy Composer from the official Composer image
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set the user and working directory
USER ${USER}
WORKDIR ${HOME}

# Copy the entrypoint script
COPY ./entrypoint.sh /entrypoint.sh

# Set the entrypoint script as the default command
CMD ["/bin/ash", "/entrypoint.sh"]