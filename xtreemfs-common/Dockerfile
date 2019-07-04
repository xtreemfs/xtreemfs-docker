FROM ubuntu:16.04
MAINTAINER Christoph Kleineweber <kleineweber@zib.de>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qy update
RUN apt-get -qy dist-upgrade

RUN apt-get -qy install \
    build-essential \
    default-jdk \
    git \
    maven

ENV JAVA_HOME /usr/lib/jvm/default-java

RUN git clone --depth 1 https://github.com/xtreemfs/xtreemfs.git && \
    make -j`nproc` -C xtreemfs server
