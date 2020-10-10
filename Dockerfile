FROM alpine:3.12
MAINTAINER John Majernik <jdmajernik@gmail.com>

#The Name of the downloaded file. Might cause build issues, as this may change. Could just extract manually and host on github...
ARG gamelift_file_name=GameLift_09_17_2020
ARG gamelift_download=https://gamelift-release.s3-us-west-2.amazonaws.com/${gamelift_file_name}.zip
ARG gamelift_ver=1.0.5

RUN apk add --no-cache wget openjdk8-jre tar bash
RUN wget -O ${gamelift_file_name}.zip ${gamelift_download}
RUN unzip ${gamelift_file_name}
RUN cd ${gamelift_file_name} &&
#Running bash so the container doesn't close
#RUN bash

