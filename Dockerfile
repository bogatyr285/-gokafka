FROM alpine:3.13.2
# setup librdkafka
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories &&\
    apk update  &&\
    apk add --no-cache \
    librdkafka=1.6.1-r0 \
    librdkafka-dev=1.6.1-r0