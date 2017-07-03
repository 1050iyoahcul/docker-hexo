docker-hexo
=========================
A Docker Container for Hexo.



## create image

 docker build -t hexo .

## run container

* docker run --name=blog --rm -it -v ~/Blog:/blog -p 4000:4000 iyoahcul/docker-hexo
* docker run --name=blog -d -it -v ~/Blog:/blog -p 4000:4000 iyoahcul/docker-hexo

## alpine

This image based on base image [docker-alpine](https://github.com/gliderlabs/docker-alpine).