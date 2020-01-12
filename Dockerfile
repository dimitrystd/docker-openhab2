FROM openhab/openhab:2.5.0-amd64-alpine
MAINTAINER Dmytro Studynskyi <dimitrystd@gmail.com>

RUN apk update \
  && apk add \
  # orvibo script
  python3 \
  && rm -rf /var/cache/apk/*
