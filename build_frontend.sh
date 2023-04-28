#!/bin/bash

echo "You may need to run this as root"

npx quasar build && \
cd dist/spa/ && \
cp -R * /usr/share/nginx/html/simulation/kidney