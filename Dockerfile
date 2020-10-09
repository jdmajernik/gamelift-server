FROM alpine:3.12
MAINTAINER John Majernik <jdmajernik@gmail.com>

RUN apk update && add --no-cache wget openjdk8-jre

#Running bash so the container doesn't close
RUN bash
