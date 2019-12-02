# Dockerfile for building Zeppelin

This repository contains a Dockerfile, script and configuration for building a custom Zeppelin image.

## Zeppelin

Docker image is based on `docker.io/apache/zeppelin:0.8.2`.

### Building

Update upstream docker image:

````console
docker pull apache/zeppelin:0.8.2
````

Build image:

````console
docker build -t eu.gcr.io/prod-bip/ssb/zeppelin:0.8.2-1 .
````

Push image to GCR project registry:

````console
docker push eu.gcr.io/prod-bip/ssb/zeppelin:0.8.2-1
````

### Configuration

The "install.sh" script will install Spark and Hadoop binaries and create symlinks to Hadoop configuration files. The linked files (source) will be supplied by Kubernetes as volume mounts and will hence not exist until deployed by Kubernetes using BIP automation.

The "interpreter.json" was only added to set the yarn mode to "cluster", but this is a temporary solution until a better method is implemented.
