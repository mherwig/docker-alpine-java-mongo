# docker-alpine-java-mongo

This repository hosts a Dockerfile for a container that has [MongoDB](https://www.mongodb.org) and [OpenJDK 8](http://openjdk.java.net/) installed, based on the [java:alpine](https://hub.docker.com/r/_/java/) image.

## Install

Download this image from the public docker hub:

	$ docker pull mherwig/alpine-java-mongo

For re-building this image from the dockerfile:

	$ docker build -t mherwig/alpine-java-mongo .

## Usage

Running `mongod`:

	$ docker run -d --name mongo -p 27017:27017 mherwig/alpine-java-mongo

You can also specify the location on the host system where the database shall be stored (MacOSX not supported due to Docker limitations):

    $ docker run -d --name mongo -p 27017:27017 \
    -v ~/data/db:/data/db \
    mherwig/alpine-java-mongo
