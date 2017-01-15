FROM ubuntu:14.04
MAINTAINER Christoph Kleineweber <kleineweber@zib.de>

ENV RELEASE 1.5.1
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qy update
RUN apt-get -qy dist-upgrade

RUN apt-get -qy install curl make openjdk-7-jdk ant

RUN curl -L -o archive.tgz https://github.com/xtreemfs/xtreemfs/archive/${RELEASE}.tar.gz && \
        tar xvfz archive.tgz && \
        mv xtreemfs-${RELEASE} xtreemfs && \
        cd xtreemfs && \
        make server
        
