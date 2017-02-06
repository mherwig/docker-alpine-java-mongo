# docker-alpine-java-mongo

This repository hosts a Dockerfile for building a container that has [OpenJDK 8](http://openjdk.java.net/) and [MongoDB](https://www.mongodb.org) installed, based on the [alpine:edge](https://hub.docker.com/r/_/java/) image.

**Note**: This Dockerfile's main purpose is to use an image in Bitbucket's piplines that enables you to run integrattion tests
that require a running mongodb instance.

## Install

Download this image from the public docker hub:

	$ docker pull mherwig/alpine-java-mongo

For re-building this image from the dockerfile:

	$ docker build -t mherwig/alpine-java-mongo .

## Use it in Bitbucket's piplines

Example `bitbucket-pipelines.yml`:

	image: mherwig/alpine-java-mongo

	pipelines:
	  default:
	    - step:
	        script:
	          - ./gradlew build
