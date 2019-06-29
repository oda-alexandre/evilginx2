# IMAGE TO USE
FROM golang:rc-stretch

# MAINTAINER
MAINTAINER https://www.oda-alexandre.com/

# VARIABLES
ENV USER evilginx2
ENV DEBIAN_FRONTEND noninteractive
ENV PORTS ENV PORTS 443 80 53/udp

# INSTALL PACKAGES
RUN apt-get update && apt-get install --no-install-recommends -y \
sudo \
ca-certificates \
make \
git && \

# ADD USER
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECT USER
USER ${USER}

# INSTALL APP
RUN go get -u github.com/kgretzky/evilginx2

# SELECT WORKING SPACE
WORKDIR /go/src/github.com/kgretzky/evilginx2

# INSTALL APP
RUN make && \
sudo make install && \

# CLEANING
sudo apt-get --purge autoremove -y \
git \
make && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# OPENING PORTS
EXPOSE ${PORTS}

# START THE CONTAINER
CMD sudo evilginx \
