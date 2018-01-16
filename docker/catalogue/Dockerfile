FROM golang:1.6

RUN mkdir /app
COPY . /go/src/github.com/microservices-demo/catalogue/
WORKDIR /go/src/github.com/microservices-demo/catalogue

RUN go get -u github.com/mattn/goveralls && \
    go get -u github.com/FiloSottile/gvt && \
    gvt restore

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /app/main github.com/microservices-demo/catalogue/cmd/cataloguesvc

CMD ["/app/main", "-port=80"]
EXPOSE 80
