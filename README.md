# alpine-confd

Same as [aegypius/docker-confd](https://github.com/aegypius/docker-confd) expect that using [kiasaki/alpine-golang](https://github.com/kiasaki/docker-alpine-golang) as base image.

# confd

[confd](https://github.com/kelseyhightower/confd) allows to manage local application
configuration files using templates and data from etcd.

## Volumes

- `/etc/confd` to allow configuration

## Standalone

You can use this base box standalone doing:

    docker pull jihchi/alpine-confd

You can run it using a configuration volume (see [configuration guide](https://github.com/kelseyhightower/confd/blob/master/docs/configuration-guide.md)):

    docker run -v /path/to/confd/config:/etc/confd -t jihchi/alpine-confd

Or directly from command line:

    docker run -t jihchi/alpine-confd -node http://etcd-server:4001

... where etcd-server is the IP or host of your etcd server


## As a base image

This image is based on ```ubuntu:latest``` image to use confd as a base image,
simply update the ```FROM``` line from your dockerfile :

    FROM jihchi/alpine-confd

You can find the trusted build image in [the docker registry](https://registry.hub.docker.com/u/jihchi/alpine-confd/)
