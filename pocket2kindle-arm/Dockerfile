# alvaroreig/pocket2kindle-arm

FROM alvaroreig/calibre4raspbian
MAINTAINER Alvaro Reig "alvaroreig@gmail.com"

RUN \
  
  # Install dependencies.
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive PYTHONIOENCODING="utf-8" apt-get install --no-install-recommends -y \
  git \
  curl && \   
  
  # Installing nodejs
  curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
  apt-get install -y nodejs && \

  # Clone repository and install dependencies
  git clone https://github.com/alvaroreig/pocket2kindle.git && \
  cd pocket2kindle && \
  npm install && \

  # Cleaning up
  apt-get remove -y git curl && apt-get -y autoremove && apt-get clean && \ 
  apt-get purge && \
  rm -rf rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

  # Assuming that the env vars are passed on runtime, this command sends Pocket's content to Kindle.
  ENTRYPOINT cd pocket2kindle && nodejs index.js
