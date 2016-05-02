FROM mhart/alpine-node:4
MAINTAINER emmanuel.botros@gmail.com
RUN apk add --update alpine-sdk
RUN apk add --update python
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Europe/Paris /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*
RUN npm install microtime@2.1.1 sqlite3@3.1.3
