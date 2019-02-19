FROM google/cloud-sdk:alpine

MAINTAINER Kirill Garbar <kirill@iterium.co.uk>

RUN gcloud components install app-engine-go
