# Copyright (c) 2024 Mac Gould / PlutoNode LTD

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

FROM alpine:latest

RUN apk --update --no-cache add curl ca-certificates nginx

RUN apk add php8.3 php8.3-xml php8.3-exif php8.3-fpm php8.3-session php8.3-soap php8.3-openssl php8.3-gmp
RUN apk add php8.3-pdo_odbc php8.3-json php8.3-dom php8.3-pdo php8.3-zip php8.3-mysqli php8.3-sqlite3
RUN apk add php8.3-pdo_pgsql php8.3-bcmath php8.3-gd php8.3-odbc php8.3-pdo_mysql php8.3-pdo_sqlite
RUN apk add php8.3-gettext php8.3-xmlreader php8.3-bz2 php8.3-iconv php8.3-pdo_dblib php8.3-curl
RUN apk add php8.3-ctype php8.3-phar php8.3-fileinfo php8.3-mbstring php8.3-tokenizer php8.3-simplexml

COPY --from=composer:latest  /usr/bin/composer /usr/bin/composer

USER container
ENV USER container
ENV HOME /home/container

WORKDIR /home/container
COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]