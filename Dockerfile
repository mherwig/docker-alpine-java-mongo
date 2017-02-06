FROM alpine:edge

# install java
RUN \
  apk add --no-cache openjdk8

# install mongodb
RUN \
  echo '@testing http://dl-4.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
  apk add --no-cache mongodb@testing && \
  rm /usr/bin/mongosniff /usr/bin/mongoperf

CMD [ "mongod" ]
