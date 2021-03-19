FROM golang:1.16.2-alpine
# setup librdkafka
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories &&\
    apk update  &&\
    apk add --no-cache \
    librdkafka=1.6.1-r0 \
    librdkafka-dev=1.6.1-r0 \
    git \
    openssh-client \
    gcc \
    g++ \
    make