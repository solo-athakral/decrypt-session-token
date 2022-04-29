#!/bin/bash

aws lambda update-function-code --function-name decrypt-session-token --zip-file fileb://decrypt-session-token-package.zip
