FROM xtreemfs/xtreemfs-common
MAINTAINER Christoph Kleineweber <kleineweber@zib.de>

ENV DEBIAN_FRONTEND noninteractive

CMD [ "/usr/bin/java","-ea","-cp","/xtreemfs/java/servers/dist/XtreemFS.jar:/xtreemfs/java/foundation/dist/Foundation.jar:/xtreemfs/java/flease/dist/Flease.jar:/xtreemfs/java/lib/*","org.xtreemfs.dir.DIR","/xtreemfs_data/dirconfig.properties" ]

