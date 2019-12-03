# Dockerfile for building Zeppelin

This repository contains a Dockerfile, script and configuration for building a custom Zeppelin image.

## Zeppelin

Docker image is based on `docker.io/apache/zeppelin:0.8.2`.

### Building

Build with Drone.

### Configuration

The "install.sh" script will install Spark and Hadoop binaries and create symlinks to Hadoop configuration files. The linked files (source) will be supplied by Kubernetes as volume mounts and will hence not exist until deployed by Kubernetes using BIP automation.

The "interpreter.json" file was only added to set the yarn mode to "cluster", but this is a temporary solution until a better method is implemented.

The "zeppelin-site.xml" was added to increase the `zeppelin.server.jetty.request.header.size` setting in order to be able to forward HTTP Headers (Authorization) from the oauth2 proxy.
