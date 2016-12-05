FROM fedora
MAINTAINER "Aditya Patawari" <adimania@fedoraproject.org>

RUN dnf -y update && dnf clean all
RUN dnf -y install python-pip && dnf clean all

ADD . /src

RUN cd /src; pip install -r requirements.txt

EXPOSE 8080

CMD ["python", "/src/index.py"]
