FROM fedora
MAINTAINER Aditya Patawari <adimania@fedoraproject.org>

RUN dnf -y update && dnf clean all
RUN dnf -y install python-pip python-django git sqlite && dnf clean all

EXPOSE 8000

CMD [ "/bin/bash" ]
