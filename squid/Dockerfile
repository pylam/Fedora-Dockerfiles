# Based on the Fedora image
FROM fedora

# File Author / Maintainer
MAINTAINER "Michal Luscon" <mluscon@redhat.com>

# Install Squid
RUN dnf -y update; dnf clean all;
RUN dnf -y install squid; dnf clean all;

ADD squid.conf /etc/squid/squid.conf
 
RUN squid -z -F

# Expose ports
EXPOSE 3128

# Set the default command to execute
# when creating a new container
CMD squid -N -d 1
