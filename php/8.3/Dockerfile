# Use the official Alpine image as a base
FROM alpine:latest

# Set environment variables
ENV USER=container
ENV HOME=/home/container

# Install necessary packages
RUN apk --update --no-cache add \
    curl \
    ca-certificates \
    nginx

# Split the apk add command into smaller parts
RUN apk add php8.3 php8.3-xml php8.3-exif php8.3-fpm php8.3-session php8.3-soap php8.3-openssl php8.3-gmp
RUN apk add php8.3-pdo_odbc php8.3-json php8.3-dom php8.3-pdo php8.3-zip php8.3-mysqli php8.3-sqlite3
RUN apk add php8.3-pdo_pgsql php8.3-bcmath php8.3-gd php8.3-odbc php8.3-pdo_mysql php8.3-pdo_sqlite
RUN apk add php8.3-gettext php8.3-xmlreader php8.3-bz2 php8.3-iconv php8.3-pdo_dblib php8.3-curl
RUN apk add php8.3-ctype php8.3-phar php8.3-fileinfo php8.3-mbstring php8.3-tokenizer php8.3-simplexml

# Copy Composer from the official Composer image
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set the user and working directory
USER ${USER}
WORKDIR ${HOME}

# Copy the entrypoint script
COPY ./entrypoint.sh /entrypoint.sh

# Set the entrypoint script as the default command
CMD ["/bin/ash", "/entrypoint.sh"]