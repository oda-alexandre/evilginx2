# evilginx2

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904444/evilginx2-logo-512.png)

## INDEX

- [evilginx2](#evilginx2)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/evilginx2/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/evilginx2/commits/master)

## INTRODUCTION

Docker image of :

- [evilginx2](https://breakdev.org/evilginx-2-next-generation-of-phishing-2fa-tokens)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/evilginx2/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/evilginx2/)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

### DOCKER RUN

```\
docker run -ti --rm \
--name evilginx2 \
-v ${HOME}:/home/evilginx2 \
alexandreoda/evilginx2
```

### DOCKER COMPOSE

```yml
version: "2.0"

services:
  evilginx2:
    container_name: evilginx2
    image: alexandreoda/evilginx2
    privileged: false
    volumes:
      - "${HOME}:/home/evilginx2"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/evilginx2/blob/master/LICENSE)
