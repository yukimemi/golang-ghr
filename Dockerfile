# Golang
#
# VERSION       0.0.1

FROM golang:alpine
MAINTAINER yukimemi <yukimemi@gmail.com>

RUN apk --update --no-cache add git zip

RUN go get -u github.com/mattn/gom \
      && go get -u github.com/tcnksm/ghr

COPY ./compile.sh /usr/bin/compile
COPY ./release.sh /usr/bin/release


