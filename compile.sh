#!/bin/sh

if [ -z $APPNAME ]; then
  echo "APPNAME is not set ! Set APPNAME env !"
  exit 1
fi

for GOOS in darwin linux windows; do
  for GOARCH in 386 amd64; do
    if [ $GOOS = "windows" ]; then
      go build -v -o dst/${GOOS}-${GOARCH}/${APPNAME}.exe
    else
      go build -v -o dst/${GOOS}-${GOARCH}/${APPNAME}
    fi
    zip -r dst/${GOOS}-${GOARCH}.zip dst/${GOOS}-${GOARCH}
    rm -rf dst/${GOOS}-${GOARCH}
  done
done

