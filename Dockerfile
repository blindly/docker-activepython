FROM centos

MAINTAINER blindly <blindly.github.com>

RUN yum install wget tar -y

WORKDIR /tmp
RUN wget http://downloads.activestate.com/ActivePython/releases/2.7.6.9/ActivePython-2.7.6.9-linux-x86_64.tar.gz
RUN tar zxvf ActivePython-2.7.6.9-linux-x86_64.tar.gz

RUN bash /tmp/ActivePython-2.7.6.9-linux-x86_64/install.sh --install-dir /opt/python

RUN rm -rf /tmp/*
