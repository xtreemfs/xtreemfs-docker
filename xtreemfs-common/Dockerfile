FROM ubuntu:14.04
MAINTAINER Christoph Kleineweber <kleineweber@zib.de>

ENV RELEASE 1.5.1
ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8

RUN apt-get -qy update
RUN apt-get -qy dist-upgrade
RUN apt-get -qy install curl make openjdk-7-jdk ant

ADD entrypoint.sh /entrypoint.sh
RUN curl -L -o archive.tgz https://github.com/xtreemfs/xtreemfs/archive/${RELEASE}.tar.gz && \
        tar xvfz archive.tgz && \
        mv xtreemfs-${RELEASE} xtreemfs && \
        cd xtreemfs && \
        make server
# Set the command to one of dir, mrc, osd when running.
ENTRYPOINT ["/entrypoint.sh"]
