FROM maven:alpine

RUN apk --no-cache add git

WORKDIR /home/nexus-blobstore-s3

RUN git clone https://github.com/sonatype/nexus-blobstore-s3.git .
RUN mvn clean install

COPY install.sh .

ENV NEXUS_HOME /nexus-home

VOLUME ${NEXUS_HOME}

ENTRYPOINT ["sh", "install.sh"]
