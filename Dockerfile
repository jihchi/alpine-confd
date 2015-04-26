FROM kiasaki/alpine-golang
MAINTAINER Archie Lee <achi@987.tw>

ENV CONFD_VERSION=master

VOLUME /etc/confd/

RUN go get --tags $CONFD_VERSION -u github.com/kelseyhightower/confd

CMD confd
