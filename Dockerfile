FROM alpine:3.15

RUN apk add --no-cache fio==3.28-r1

COPY jobs /jobs
VOLUME /data
WORKDIR /data

ENTRYPOINT [ "fio" ]
