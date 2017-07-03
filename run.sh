#!/bin/bash

if [ ! -d ~/Blog ]; then
   mkdir ~/Blog
else
    echo "Folder exists!"
fi
docker run --name=blog --rm -it -v ~/Blog:/blog -p 4000:4000 hexo /bin/ash 