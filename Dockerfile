# Golang
#
# VERSION       0.0.1

FROM golang
MAINTAINER yukimemi <yukimemi@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
      zip \
      && rm -rf /var/lib/apt/lists/*

RUN go get -u github.com/mattn/gom \
      && go get -u github.com/tcnksm/ghr

COPY ./compile.sh /usr/bin/compile
COPY ./release.sh /usr/bin/release

