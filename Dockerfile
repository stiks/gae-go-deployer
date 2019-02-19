FROM google/cloud-sdk:alpine

MAINTAINER Kirill Garbar <kirill@iterium.co.uk>

RUN gcloud config set core/disable_usage_reporting true && \
    gcloud config set component_manager/disable_update_check true && \
    gcloud components install app-engine-go --quiet
