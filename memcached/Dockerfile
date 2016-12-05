FROM  fedora
MAINTAINER  scollier <scollier@redhat.com>

RUN  dnf -y update && dnf clean all
RUN dnf -y install memcached && dnf clean all

EXPOSE  11211

CMD  ["memcached", "-u", "daemon"]
