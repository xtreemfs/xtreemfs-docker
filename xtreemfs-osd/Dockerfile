FROM xtreemfs/xtreemfs-common
MAINTAINER Christoph Kleineweber <kleineweber@zib.de>

CMD ["/usr/bin/java", "-ea", \
     "-cp", "/xtreemfs/java/xtreemfs-servers/target/xtreemfs.jar", \
     "org.xtreemfs.osd.OSD", "/xtreemfs_data/osdconfig.properties"]
