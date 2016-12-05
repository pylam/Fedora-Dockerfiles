FROM fedora
MAINTAINER Aditya Patawari <adimania@fedoraproject.org>

RUN dnf -y update && dnf clean all
RUN dnf -y install python-flask && dnf clean all
ADD flask-example.py /opt/
EXPOSE 5000

CMD [ "/usr/bin/python", "/opt/flask-example.py" ]
