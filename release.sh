#!/bin/sh

if [ -z $VERSION ]; then
  echo "VERSION is not set ! Set VERSION env !"
  exit 1
fi

ghr -delete $VERSION dst

