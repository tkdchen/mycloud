FROM registry.fedoraproject.org/fedora:33
LABEL name=mycloud
LABEL description="A simple Web application running in the cloud"
LABEL vendor="Chenxiong Qi"
LABEL license="GPL-3.0-or-later"
LABEL maintainer="Chenxiong Qi <qcxhome@gmail.com>"
LABEL version="0.1"

RUN dnf --setopt=deltarpm=0 --setopt=install_weak_deps=false --nodocs \
    install -y python3-flask && \
    dnf clean all

WORKDIR /code
COPY main.py .
ENV FLASK_APP main.py
CMD ["flask", "run"]
