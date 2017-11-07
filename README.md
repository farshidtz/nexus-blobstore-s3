# Dockerized installation of nexus-blobstore-s3

## Run

docker build -t nexus-blobstore-s3 .
docker run -v /home-directory-of-nexus-server:/nexus-home --rm nexus-blobstore-s3
