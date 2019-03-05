FROM golang:rc-stretch

MAINTAINER https://oda-alexandre.com

# VARIABLES
ENV USER evilginx2 \
DEBIAN_FRONTEND noninteractive

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install --no-install-recommends -y \
sudo \
ca-certificates \
make \
git && \

# AJOUT UTILISATEUR
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECTION UTILISATEUR
USER ${USER}

# INSTALLATION DE L'APPLICATION
RUN go get -u github.com/kgretzky/evilginx2

# SELECTION DE L'ESPACE DE TRAVAIL
WORKDIR /go/src/github.com/kgretzky/evilginx2

# INSTALLATION DE L'APPLICATION
RUN make && \
sudo make install && \

# NETTOYAGE
sudo apt-get --purge autoremove -y \
git \
make && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD sudo evilginx
