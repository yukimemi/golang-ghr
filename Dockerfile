# Golang
#
# VERSION       0.0.1

FROM golang
MAINTAINER yukimemi <yukimemi@gmail.com>

RUN apt update && apt install -y --no-install-recommends \
      zip \
      && rm -rf /var/lib/apt/lists/*

RUN go get -u github.com/tcnksm/ghr \
      && go get -u github.com/motemen/gobump/cmd/gobump \
      && go get -u github.com/golang/dep/...

RUN curl -o /usr/local/bin/jq -L https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 \
      && chmod +x /usr/local/bin/jq

COPY ./compile.sh /usr/bin/compile
COPY ./release.sh /usr/bin/release

