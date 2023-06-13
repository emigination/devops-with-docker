FROM golang:1.16-alpine as build-stage
RUN apk update && apk add git && git clone https://github.com/docker-hy/material-applications.git
WORKDIR /go/material-applications/example-backend
RUN CGO_ENABLED=0 GOOS=linux go build -o /server

FROM scratch
EXPOSE 8080
COPY --from=build-stage /server /server
ENV REQUEST_ORIGIN=http://localhost:5000
ENTRYPOINT [ "/server" ]