# Dockerfile for building Zeppelin

This repository contains a Dockerfile, script and configuration for building a custom Zeppelin image.

## Zeppelin

Docker image is based on `docker.io/apache/zeppelin:0.8.2`.

### Building

Build with Drone.

### Configuration

Run

    mvn dependency:copy-dependencies -DoutputDirectory=files/zeppelin/lib

to add pac4j libraries

