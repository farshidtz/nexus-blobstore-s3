# Dockerized installation of nexus-blobstore-s3
Project source codes: [https://github.com/sonatype/nexus-blobstore-s3](https://github.com/sonatype/nexus-blobstore-s3)

## Run
Given an installed Nexus server with home directory at `/home-directory-of-nexus-server`:

```
docker build -t nexus-blobstore-s3 .
docker run -v /home-directory-of-nexus-server:/nexus-home --rm nexus-blobstore-s3
```
The container will exit after the installation.

If the installation was successful, restart Nexus server.
