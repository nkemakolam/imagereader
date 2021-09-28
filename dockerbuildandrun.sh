#!/usr/bin/env bash
set -e
set -x
docker build -t nkem/imagereader .    
docker run -it -p 5000:80 nkem/imagereader