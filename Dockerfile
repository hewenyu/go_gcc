FROM golang:alpine

RUN set -eux && \
    apk add --update postgresql-dev gcc g++ libffi-dev musl-dev linux-headers  && \
    go get -v golang.org/x/tools/gopls && \
    go version
