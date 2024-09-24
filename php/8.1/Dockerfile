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

RUN apk add php8.1 php8.1-xml php8.1-exif php8.1-fpm php8.1-session php8.1-soap php8.1-openssl php8.1-gmp
RUN apk add php8.1-pdo_odbc php8.1-json php8.1-dom php8.1-pdo php8.1-zip php8.1-mysqli php8.1-sqlite3
RUN apk add php8.1-pdo_pgsql php8.1-bcmath php8.1-gd php8.1-odbc php8.1-pdo_mysql php8.1-pdo_sqlite
RUN apk add php8.1-gettext php8.1-xmlreader php8.1-bz2 php8.1-iconv php8.1-pdo_dblib php8.1-curl
RUN apk add php8.1-ctype php8.1-phar php8.1-fileinfo php8.1-mbstring php8.1-tokenizer php8.1-simplexml

COPY --from=composer:latest  /usr/bin/composer /usr/bin/composer

USER container
ENV USER container
ENV HOME /home/container