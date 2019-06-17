FROM ivonet/x11webui:latest
LABEL maintainer="Ivo Woltring - @ivonet"

RUN apt-get update \
 && apt-get install --no-install-recommends -y TODO\
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ARG APP=blessed
ARG USR=user
ARG PWD=secret

ENV APPNAME=$APP      \
    USERNAME=$USR     \
    GPASSWORD=$PWD

COPY root/ /
