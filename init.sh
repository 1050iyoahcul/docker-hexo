if  [ "$(ls -A ./)" ]; then
    echo "Starting server..."
    hexo server
  else
    hexo init
    echo "Template built."
fi
