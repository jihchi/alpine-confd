#!/bin/bash

cd confd/

docker build -t confd_builder -f Dockerfile.build.alpine .
docker run -ti --rm -v $(pwd):/app confd_builder ./build

cp bin/confd ../bin/confd
