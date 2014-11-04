FROM xtreemfs/xtreemfs-common
MAINTAINER Christoph Kleineweber <kleineweber@zib.de>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qy install build-essential cmake libfuse-dev \
    libattr1-dev libssl-dev libboost-system-dev libboost-thread-dev \
    libboost-program-options-dev libboost-regex-dev
RUN cd xtreemfs && make client && make install-client

RUN echo "KERNEL==fuse, MODE=0777" > /etc/udev/rules.d/99-fuse.rules
