## base

This is my base container including python and nodejs. It is intended to be extended for our applications/sites.

#### Modifying the default base container
- Edit Dockerfile
- `make build` To build a new version of the container
- `docker push celliott/base:latest` To push a new version of the container to docker hub

#### To use in a project
Base your new docker container from this image.

Example Dockerfile

```
FROM celliott/base:latest
MAINTAINER celliott
```