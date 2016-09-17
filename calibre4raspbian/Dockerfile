# alvaroreig/calibre4raspbian
FROM resin/rpi-raspbian:jessie-20160831
MAINTAINER Alvaro Reig "alvaroreig@gmail.com"

# Install dependencies.
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive PYTHONIOENCODING="utf-8" apt-get install --no-install-recommends -y calibre && \
  apt-get -y autoremove && apt-get clean && \ 
  apt-get purge && \
  rm -rf rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
