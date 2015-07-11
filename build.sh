#!/bin/sh
docker build -t xtreemfs/xtreemfs-common xtreemfs-common
docker build -t xtreemfs/xtreemfs-dir xtreemfs-dir
docker build -t xtreemfs/xtreemfs-mrc xtreemfs-mrc
docker build -t xtreemfs/xtreemfs-osd xtreemfs-osd
docker build -t xtreemfs/xtreemfs-client xtreemfs-client
