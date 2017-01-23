FROM ubuntu:16.04
MAINTAINER Christoph Kleineweber <kleineweber@zib.de>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qy update
RUN apt-get -qy dist-upgrade

RUN apt-get -qy install \
    build-essential \
    git \
    maven \
    openjdk-8-jdk

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV JAVA_INCLUDE_PATH /usr/lib/jvm/java-8-openjdk-amd64/include
ENV JAVA_INCLUDE_PATH2 /usr/lib/jvm/java-8-openjdk-amd64/include/linux

RUN git clone --depth 1 https://github.com/xtreemfs/xtreemfs.git && \
    make -j`nproc` -C xtreemfs server
