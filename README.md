# evilginx2

<img src="https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904444/evilginx2-logo-512.png" width="200" height="200"/>


## INDEX

- [evilginx2](#evilginx2)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [FIRST UPDATE](#first-update)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [CONFIG](#config)
  - [LICENSE](#license)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/evilginx2/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/evilginx2/commits/master)


## FIRST UPDATE

Date: 01-01-01


## INTRODUCTION

Docker image of :

- [evilginx2](https://breakdev.org/evilginx-2-next-generation-of-phishing-2fa-tokens)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/evilginx2/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/evilginx2/)


## PREREQUISITES

Use [docker](https://www.docker.com)


## INSTALL

```
docker run -ti --rm --name evilginx2 -v ${HOME}:/home/evilginx2 -p 443:443 -p 80:80 -p 53:53/udp alexandreoda/evilginx2
```


## CONFIG

Tutoriel video https://www.youtube.com/watch?v=SxTs9pVYBMw


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/evilginx2/blob/master/LICENSE)
