FROM php

RUN apt update && apt upgrade -y
RUN apt install software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt install -y php
RUN apt install php7.4-mysql
RUN apt install php -y
RUN apt install ffmpeg -y

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm

RUN mkdir /app/
COPY . /app
WORKDIR /app


CMD php san3.php
