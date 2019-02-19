FROM google/cloud-sdk:alpine

MAINTAINER Kirill Garbar <kirill@iterium.co.uk>

RUN apk --update upgrade \
    && apk add go \
    && rm /var/cache/apk/*

ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV GOBIN /go/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

RUN gcloud config set core/disable_usage_reporting true && \
    gcloud config set component_manager/disable_update_check true && \
    gcloud components install app-engine-go --quiet
