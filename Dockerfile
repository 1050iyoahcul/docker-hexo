FROM alpine:3.6

MAINTAINER iyoahcul <iyoahcul@gmail.com>

RUN mkdir /blog

VOLUME /blog

WORKDIR /blog

RUN apk --update --no-progress add nodejs nodejs-npm git openssh \
&& npm install hexo-cli -g 

EXPOSE 4000

CMD ['/bin/ash']
