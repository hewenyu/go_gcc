FROM golang:alpine

RUN set -eux && \
    apk add --update postgresql-dev gcc git g++ libffi-dev musl-dev linux-headers  && \
    go get -v golang.org/x/tools/gopls && \
    go get -v github.com/go-delve/delve/cmd/dlv && \
    go version
