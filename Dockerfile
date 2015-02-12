FROM aegypius/golang

ENV CONFD_VERSION=master

VOLUME /etc/confd/

RUN go get --tags $CONFD_VERSION -u github.com/kelseyhightower/confd

CMD confd
