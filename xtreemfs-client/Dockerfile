FROM ubuntu:14.04
MAINTAINER Christoph Kleineweber <kleineweber@zib.de>

ENV RELEASE 1.5.1
ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8

RUN apt-get -qy update
RUN apt-get -qy dist-upgrade

RUN apt-get -qy install build-essential cmake fuse libfuse-dev \
    libattr1-dev libssl-dev libboost-system-dev libboost-thread-dev \
    libboost-program-options-dev libboost-regex-dev curl
RUN curl -L -o archive.tgz https://github.com/xtreemfs/xtreemfs/archive/${RELEASE}.tar.gz && \
        tar xvfz archive.tgz && \
        rm archive.tgz && \
        mv xtreemfs-${RELEASE} xtreemfs && \
        cd xtreemfs && \
        make client && \
        make install-client

RUN echo "KERNEL==fuse, MODE=0777" > /etc/udev/rules.d/99-fuse.rules
