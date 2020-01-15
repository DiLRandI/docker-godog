FROM golang:alpine

RUN apk add git
RUN go get github.com/DATA-DOG/godog/cmd/godog

WORKDIR /go