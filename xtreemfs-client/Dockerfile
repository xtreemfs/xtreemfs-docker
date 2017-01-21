FROM xtreemfs/xtreemfs-common
MAINTAINER Christoph Kleineweber <kleineweber@zib.de>

RUN apt-get -qy install cmake libfuse-dev \
    libattr1-dev libssl-dev libboost-system-dev libboost-thread-dev \
    libboost-program-options-dev libboost-regex-dev

RUN cd xtreemfs && \
    make -j`nproc` client && \
    make -j`nproc` install-client
