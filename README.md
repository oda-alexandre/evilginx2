# evilginx2

![evilginx2](https://raw.githubusercontent.com/oda-alexandre/evilginx2/master/img/logo-evilginx2.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/evilginx2/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![evilginx2 docker build](https://img.shields.io/docker/build/alexandreoda/evilginx2.svg)](https://hub.docker.com/r/alexandreoda/evilginx2)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [evilginx2](https://breakdev.org/evilginx-2-next-generation-of-phishing-2fa-tokens) pour [docker](https://www.docker.com), mis à jour automatiquement dans le [docker hub](https://hub.docker.com/r/alexandreoda/evilginx2/) public.


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -ti --name evilginx2 -v ${HOME}:/home/evilginx2 -p 443:443 -p 80:80 -p 53:53/udp alexandreoda/evilginx2
```


## CONFIGURATION

Tutoriel video https://www.youtube.com/watch?v=SxTs9pVYBMw


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/evilginx2/blob/master/LICENSE)
