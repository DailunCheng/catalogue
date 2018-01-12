#!/usr/bin/env sh

go get -u github.com/FiloSottile/gvt
go get -u github.com/mattn/goveralls
gvt restore
go test -v -covermode=count -coverprofile=coverage.out
