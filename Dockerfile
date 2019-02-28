FROM golang:rc-stretch

MAINTAINER https://oda-alexandre.github.io

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install --no-install-recommends -y \
sudo \
ca-certificates \
make \
git

# AJOUT UTILISATEUR
RUN useradd -d /home/evilginx2 -m evilginx2 && \
passwd -d evilginx2 && \
adduser evilginx2 sudo

# SELECTION UTILISATEUR
USER evilginx2

# INSTALLATION DE L'APPLICATION
RUN go get -u github.com/kgretzky/evilginx2

# SELECTION DE L'ESPACE DE TRAVAIL
WORKDIR /go/src/github.com/kgretzky/evilginx2

# INSTALLATION DE L'APPLICATION
RUN make && \
sudo make install

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y \
git \
make && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD sudo evilginx
