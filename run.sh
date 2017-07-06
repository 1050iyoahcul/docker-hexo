#!/bin/bash

if [ ! -d ~/Blog ]; then
   git clone git@github.com:1050iyoahcul/1050iyoahcul.github.io.git ~/Blog
   cd ~/Blog
   git checkout hexo
   npm install
fi
docker run --name=blog -it --rm -p 4000:4000 -v ~/Blog:/blog -v $HOME/.gitconfig:/root/.gitconfig -v $HOME/.ssh:/root/.ssh hexo /bin/ash 