# Based on the Fedora image
FROM fedora

MAINTAINER "Maciej Lasyk" <maciek@lasyk.info>

# install main packages:
RUN dnf -y update
RUN dnf -y install openssh-server supervisor rsyslog sudo
#logrotate supervisor openssh-server rsyslog sudo pwgen
