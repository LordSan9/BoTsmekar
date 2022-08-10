FROM php

RUN apt update && apt upgrade -y
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php -y
RUN apt install php8.0 libapache2-mod-php8.0
RUN apt install php8.0-fpm
RUN apt-get update
RUN apt install -y php8.0
RUN apt install ffmpeg -y

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm

RUN mkdir /app/
COPY . /app
WORKDIR /app


CMD php san3.php
