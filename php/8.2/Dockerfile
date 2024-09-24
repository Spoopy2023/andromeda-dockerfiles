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
RUN apk add php8.2 php8.2-xml php8.2-exif php8.2-fpm php8.2-session php8.2-soap php8.2-openssl php8.2-gmp php8.2-pdo_odbc php8.2-json php8.2-dom php8.2-pdo php8.2-zip php8.2-mysqli php8.2-sqlite3 php8.2-pdo_pgsql php8.2-bcmath php8.2-gd php8.2-odbc php8.2-pdo_mysql php8.2-pdo_sqlite php8.2-gettext php8.2-xmlreader php8.2-bz2 php8.2-iconv php8.2-pdo_dblib php8.2-curl php8.2-ctype php8.2-phar php8.2-fileinfo php8.2-mbstring php8.2-tokenizer php8.2-simplexml
COPY --from=composer:latest  /usr/bin/composer /usr/bin/composer

USER container
ENV USER container
ENV HOME /home/container

WORKDIR /home/container
COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]a