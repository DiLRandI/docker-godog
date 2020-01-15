FROM golang:alpine

RUN go get github.com/DATA-DOG/godog/cmd/godog

WORKDIR /go