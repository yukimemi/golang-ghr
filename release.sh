#!/bin/sh

VERSION=$(gobump show | jq -r '.[]')

if [ -z $VERSION ]; then
  echo "Can not get VERSION !"
  exit 1
fi

ghr -delete $VERSION dst

