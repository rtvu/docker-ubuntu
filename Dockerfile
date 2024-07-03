##############
# Base Image #
##############

FROM ubuntu:20.04

#########################
# Environment Variables #
#########################

ENV LANG=C.UTF-8
ENV USER=user
ENV HOME=/home/${USER}

######################
# Install Base Tools #
######################

RUN \
  apt update && \
  DEBIAN_FRONTEND=noninteractive apt install --yes --no-install-recommends \
    build-essential \
    ca-certificates \
    curl \
    git \
    sudo \
    wget \
    && \
  rm -rf /var/lib/apt/lists/*

##############
# Setup User #
##############

RUN \
  useradd --create-home ${USER} && \
  usermod --append --groups sudo ${USER} && \
  echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER ${USER}

WORKDIR ${HOME}

###########
# Startup #
###########

CMD ["/bin/bash"]
