FROM alpine:3.6

MAINTAINER iyoahcul <iyoahcul@gmail.com>

RUN apk --update --no-progress add nodejs nodejs-npm && npm install npm@latest -g
    
WORKDIR /root
