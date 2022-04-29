#!/bin/bash

export PKG_DIR="python/lib/python3.8/site-packages/"

rm -rf ${PKG_DIR} && mkdir -p ${PKG_DIR}

docker run --rm -v $(pwd):/package -w /package lambci/lambda:build-python3.8 \
    pip3 install -r requirements.txt  -t ${PKG_DIR}

pushd python/lib/python3.8/site-packages
zip -r ../../../../decrypt-session-token-package.zip .
popd
zip -g decrypt-session-token-package.zip lambda_function.py requirements.txt README.md build.sh deploy.sh

