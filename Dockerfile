FROM golang:rc-stretch

LABEL authors https://www.oda-alexandre.com

ENV USER evilginx2
ENV HOME /home/${USER}
ENV DEBIAN_FRONTEND noninteractive

RUN echo -e '\033[36;1m ******* INSTALL PACKAGES ******** \033[0m' && \
  apt-get update && apt-get install --no-install-recommends -y \
  sudo \
  ca-certificates \
  make \
  git
  
RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m' && \
  useradd -d ${HOME} -m ${USER} && \
  passwd -d ${USER} && \
  adduser ${USER} sudo

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* INSTALL APP ******** \033[0m' && \
  go get -u github.com/kgretzky/evilginx2

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR /go/src/github.com/kgretzky/evilginx2

RUN echo -e '\033[36;1m ******* INSTALL APP ******** \033[0m' && \
  make && \
  sudo make install

RUN echo -e '\033[36;1m ******* CLEANING ******** \033[0m' && \
  sudo apt-get --purge autoremove -y \
  git \
  make && \
  sudo apt-get autoclean -y && \
  sudo rm /etc/apt/sources.list && \
  sudo rm -rf /var/cache/apt/archives/* && \
  sudo rm -rf /var/lib/apt/lists/*

RUN echo -e '\033[36;1m ******* OPENING PORTS ******** \033[0m'
EXPOSE 443 80 53/udp

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
CMD sudo evilginx \