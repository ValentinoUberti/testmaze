FROM golang:1.14
LABEL maintainer="Valentino Uberti <vuberti@redhat.com>"
WORKDIR /go/src/app
COPY ./src .
COPY ./scripts ./scripts
RUN go build
CMD ["./mazetest"]