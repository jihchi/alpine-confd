FROM golang:1-alpine
MAINTAINER Archie Lee <achi@987.tw>

VOLUME /etc/confd/
COPY ./bin/confd /go/bin

CMD ["confd"]
