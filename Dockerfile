FROM google/golang:1.4

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

WORKDIR /opt

COPY gor_0.16.1_x64.tar.gz /opt/gor_0.16.1_x64.tar.gz

RUN tar xfvz /opt/gor_0.16.1_x64.tar.gz

