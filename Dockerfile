FROM openhab/openhab:2.0.0-amd64
MAINTAINER Dmytro Studynskyi <dimitrystd@gmail.com>

RUN apt-get -y update \
  && apt-get -y install \
  # orvibo script
  python3 \
  # network binding
  iputils-ping \
  # pushbullet script
  curl \
  && apt-get autoclean \
  && apt-get --purge -y autoremove \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
