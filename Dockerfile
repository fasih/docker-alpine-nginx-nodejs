FROM nginx:alpine

MAINTAINER Fasih <fasih@email.com>

# Install nvm with node and npm
RUN apk add --no-cache --repository http://nl.alpinelinux.org/alpine/edge/main libuv \
    && apk add --no-cache --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.13/main nodejs=14.20.0-r0 npm \
    && apk add --no-cache --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.13/community yarn \
    && echo "NodeJS Version:" "$(node -v)" \
    && echo "NPM Version:" "$(npm -v)" \
    && echo "Yarn Version:" "$(yarn -v)"
