# evilginx2

<img src="https://raw.githubusercontent.com/kgretzky/evilginx2/master/media/img/evilginx2-logo-512.png" height="160" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/evilginx2/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/evilginx2/commits/master)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [evilginx2](https://breakdev.org/evilginx-2-next-generation-of-phishing-2fa-tokens)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/evilginx2/).


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
