FROM node:12.4.0-alpine
LABEL maintainer="Ivo Woltring - @ivonet"

RUN apk add git \
 && git clone https://github.com/yaronn/blessed-contrib.git \
 && apk del git \
 && cd /blessed-contrib \
 && npm install

ENTRYPOINT ["/usr/local/bin/node", "/blessed-contrib/examples/dashboard-random-colors.js"]
