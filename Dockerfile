FROM ubuntu:14.04.3
MAINTAINER celliott

# Set ENVs
ENV TERM xterm
ENV DEBIAN_FRONTEND noninteractive
ENV NODE_PATH /usr/lib/node_modules

# Update package list, upgrade, install default libraries.
# Clean up APT when done
RUN apt-get update && \
    apt-get -y -q upgrade && \
    apt-get install --no-install-recommends -q -y --force-yes \
      python \
      python-pip \
      python-dev \
      python-software-properties \
      uwsgi-plugin-python \
      software-properties-common \
      build-essential \
      libpq-dev \
      git \
      supervisor \
      nano \
      wget \
      curl \
      htop \
      bash \
      dialog \
      net-tools \
      ntp \
      openssh-server \
      openssh-sftp-server && \
    apt-get -y update && \
      curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && \
    apt-get install -y nodejs && \
    apt-get clean && \
      rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
