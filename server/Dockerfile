FROM wordpress:latest
RUN apt-get update \
    && apt-get install -y git vim nodejs wget yarn mariadb-client

## WP CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wp --info
RUN wget https://raw.githubusercontent.com/wp-cli/wp-cli/v2.5.0/utils/wp-completion.bash
RUN mv wp-completion.bash /usr/local/etc/wp-completion.bash

## Command-Line User
RUN echo "developer:x:33:33:developer:/var/www:/bin/bash" >> /etc/passwd
RUN echo "developer:*:18911:0:99999:7:::" >> /etc/shadow
RUN echo ". /usr/local/etc/wp-completion.bash" >> /var/www/.bash_profile
RUN echo "" >> /var/www/.bash_profile