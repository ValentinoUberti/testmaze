FROM golang:1.14

WORKDIR /go/src/app
COPY ./src .
COPY ./scripts ./scripts
RUN go build

CMD ["./mazetest"]