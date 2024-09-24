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
RUN apk add php8.2 php8.2-xml php8.2-exif php8.2-fpm php8.2-session php8.2-soap php8.2-openssl php8.2-gmp
RUN apk add php8.2-pdo_odbc php8.2-json php8.2-dom php8.2-pdo php8.2-zip php8.2-mysqli php8.2-sqlite3
RUN apk add php8.2-pdo_pgsql php8.2-bcmath php8.2-gd php8.2-odbc php8.2-pdo_mysql php8.2-pdo_sqlite
RUN apk add php8.2-gettext php8.2-xmlreader php8.2-bz2 php8.2-iconv php8.2-pdo_dblib php8.2-curl
RUN apk add php8.2-ctype php8.2-phar php8.2-fileinfo php8.2-mbstring php8.2-tokenizer php8.2-simplexml

# Copy Composer from the official Composer image
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set the user and working directory
USER ${USER}
WORKDIR ${HOME}

# Copy the entrypoint script
COPY ./entrypoint.sh /entrypoint.sh

# Set the entrypoint script as the default command
CMD ["/bin/ash", "/entrypoint.sh"]