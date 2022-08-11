FROM php

RUN apt update && apt upgrade -y
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php -y
RUN apt install php8.0 libapache2-mod-php8.0
RUN apt install -y php8.0

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm




CMD php Market.php
