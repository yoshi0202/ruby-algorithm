#!/bin/bash

if [ $# != 1 ]; then
  echo "[Error] Please input Spec Files Paths"
  exit 1
fi

docker build . -t ruby-algorithm:latest
docker run -it --rm ruby-algorithm rspec ${1}