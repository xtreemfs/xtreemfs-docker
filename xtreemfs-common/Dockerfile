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

RUN JAVA_HOME=$(java -XshowSettings:properties -version 2>&1 > /dev/null | grep 'java.home' | grep -oP "/.*")

ENV JAVA_HOME ${JAVA_HOME}
ENV JAVA_INCLUDE_PATH ${JAVA_HOME}/include
ENV JAVA_INCLUDE_PATH2 ${JAVA_HOME}/include/linux

RUN git clone --depth 1 https://github.com/xtreemfs/xtreemfs.git && \
    make -j`nproc` -C xtreemfs server
