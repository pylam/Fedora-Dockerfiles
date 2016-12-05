FROM fedora
MAINTAINER scollier <scollier@redhat.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install mongodb-server && dnf clean all
RUN mkdir -p /data/db

EXPOSE 27017
ENTRYPOINT ["/usr/bin/mongod"]

