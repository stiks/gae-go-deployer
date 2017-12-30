FROM google/cloud-sdk:alpine

MAINTAINER Kirill Garbar <kirill@iterium.co.uk>

RUN apk --update upgrade \
    && apk add go \
    && rm /var/cache/apk/*
