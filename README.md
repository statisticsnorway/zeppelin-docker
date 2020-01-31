# Dockerfile for building Zeppelin

This repository contains a Dockerfile, script and configuration for building a
custom Zeppelin image.

## Zeppelin

Current docker image is based on `docker.io/apache/zeppelin:0.8.2`. In case
switching to a non-root image, base image should be switched to
`eu.gcr.io/prod-bip/ssb/zeppelin:0.8.2-nonroot` which is in turn based on
`docker.io/apache/zeppelin:0.8.2` with additions related to the change of
folders/processes ownership. Exact Docekerfile used to build a new `nonroot`
base image is placed in the root of the current repository, see
`Dockerfile.base`

**NB**

New `eu.gcr.io/prod-bip/ssb/zeppelin:0.8.2-nonroot` includes following package
updates:

1.  numpy=1.13.3 --> numpy=1.14
1.  scipy==0.18.0 --> scipy==1.0

### Building

Build with Drone.

### Configuration

Run

    mvn dependency:copy-dependencies -DoutputDirectory=files/zeppelin/lib

to add pac4j libraries

