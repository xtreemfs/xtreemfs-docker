#!/bin/sh

JAVA=/usr/bin/java
CLASSPATH="/xtreemfs/java/servers/dist/XtreemFS.jar:/xtreemfs/java/foundation/dist/Foundation.jar:/xtreemfs/java/flease/dist/Flease.jar:/xtreemfs/java/lib/*"

case "$1" in
    dir) 
      exec $JAVA -ea -cp $CLASSPATH org.xtreemfs.dir.DIR /xtreemfs_data/dirconfig.properties
    ;;
    mrc) 
      exec $JAVA -ea -cp $CLASSPATH org.xtreemfs.mrc.MRC /xtreemfs_data/mrcconfig.properties
    ;;
    osd) 
      exec $JAVA -ea -cp $CLASSPATH org.xtreemfs.osd.OSD /xtreemfs_data/osdconfig.properties
    ;;
    sh|bash)
      exec /bin/bash
    ;;
    *)
    echo "Usage: $0 {dir|mrc|osd|sh}" 1>&2
    exit 2
    ;;
esac

