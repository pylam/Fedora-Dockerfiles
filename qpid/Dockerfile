FROM fedora
MAINTAINER William Henry <whenry@redhat.com>

RUN dnf -y update && dnf clean all
RUN dnf install -y python-qpid qpid-cpp-server && dnf clean all

ADD . /.qpidd

WORKDIR /.qpidd

EXPOSE 5672

ENTRYPOINT ["qpidd", "-t", "--auth=no"]
