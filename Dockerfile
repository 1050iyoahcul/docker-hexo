FROM alpine:3.6

MAINTAINER iyoahcul <iyoahcul@gmail.com>

RUN apk --update --no-progress add nodejs nodejs-npm && \
 npm install hexo-cli -g && \
 npm install hexo-deployer-git --save & \
 npm install hexo-git-backup --save

RUN mkdir /blog

VOLUME /blog

WORKDIR /blog

EXPOSE 4000

COPY init.sh /script/

CMD /script/init.sh
