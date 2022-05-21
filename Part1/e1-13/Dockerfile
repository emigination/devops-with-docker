FROM golang:1.16

EXPOSE 8080

RUN apt update && apt install git && git clone https://github.com/docker-hy/material-applications.git

WORKDIR /go/material-applications/example-backend

RUN go build

CMD ./server