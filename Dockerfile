FROM aegypius/golang

VOLUME /etc/confd/

RUN go get -u github.com/kelseyhightower/confd

CMD confd
