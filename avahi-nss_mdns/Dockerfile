FROM fedora
MAINTAINER alan <docker@syssolhk.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install openssh-server passwd avahi nss-mdns && dnf clean all
ADD ./start.sh /start.sh
RUN mkdir /var/run/sshd

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

RUN chmod 755 /start.sh
# EXPOSE 22
RUN ./start.sh
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
