Dockerfiles to run the XtreemFS services in containers.

The images for the DIR, MRC, and OSD services are derived from a common image
named xtreemfs/xtreemfs-common. The containers are build from the XtreemFS Git
repository at https://github.com/xtreemfs/xtreemfs.git. After cloning the
repositoring by running

```
git clone https://github.com/xtreemfs/xtreemfs-docker.git
cd xtreemfs-docker
```

start with building the xtreemfs/xtreemfs-common through executing

```
docker build -t xtreemfs/xtreemfs-common xtreemfs-common/
```

to build the common image. Continue with the service specific images

```
docker build -t xtreemfs/xtreemfs-dir xtreemfs-dir/
docker build -t xtreemfs/xtreemfs-mrc xtreemfs-mrc/
docker build -t xtreemfs/xtreemfs-osd xtreemfs-osd/
```

Service configuration files are expected to be mapped into /xtreemfs_data. The
config files have to be named dirconfig.properties, mrcconfig.properties,
and osdconfig.properties. Example configuration files for each service are
provided in the config-examples directory. A new service can be startet for
instance by running

``` 
docker run -v /xtreemfs_data:/xtreemfs_data -p 32640:32640 -t -d xtreemfs/xtreemfs-osd:latest
```

while the config is stored in /ssd/osdconfig.properties on the host. Network
ports have to be mapped adequately while executing "docker run". Default ports
are 32636 for the MRC, 32638 for the DIR, and 32640 for the OSD. You have to
ensure that services register with the correct address at the DIR service, this
can be achieved by setting the hostname parameter for the MRC and OSD service.
