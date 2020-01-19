FROM golang:buster

RUN go env -w GO111MODULE=on
RUN go get -v github.com/DATA-DOG/godog/cmd/godog

WORKDIR /go