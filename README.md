# docker-hexo

## create image

 docker build -t hexo .

## run container

* docker run --name=blog --rm -it -v ~/Blog:/blog -p 4000:4000 iyoahcul/docker-hexo
* docker run --name=blog -d -it -v ~/Blog:/blog -p 4000:4000 iyoahcul/docker-hexo
