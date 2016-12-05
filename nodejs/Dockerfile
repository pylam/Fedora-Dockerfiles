FROM fedora
MAINTAINER "Jason Clark" <jclark@redhat.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install npm && dnf clean all

ADD . /src

RUN cd /src; npm install

EXPOSE 8080

CMD ["node", "/src/index.js"]
