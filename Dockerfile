FROM alpine:3.6

MAINTAINER iyoahcul <iyoahcul@gmail.com>

RUN mkdir /blog

VOLUME /blog

WORKDIR /blog


# RUN apk --update --no-progress add nodejs nodejs-npm  && \
# npm install hexo-deployer-git --save  && \
# npm install hexo-git-backup --save
RUN apk --update --no-progress add nodejs nodejs-npm git \
&& npm install hexo-cli -g \

&& if  [ "$(ls -A /blog/)" ]; then echo "Starting server..."  && exit 1; fi 

EXPOSE 4000

CMD ['/bin/ash']
