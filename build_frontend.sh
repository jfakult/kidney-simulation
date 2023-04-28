#!/bin/bash

echo "NOTE: You may need to run this as root"

sudo -u "butlah" bash -c "quasar build" && \
cd dist/spa/ && \
rm -rf /usr/share/nginx/html/simulation/* && \
cp -R * /usr/share/nginx/html/simulation