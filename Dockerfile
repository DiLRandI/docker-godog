FROM golang:buster

RUN go install github.com/cucumber/godog/cmd/godog@latest

WORKDIR /go