FROM golang:1.17

WORKDIR /go/src/QRCodes
COPY . .

RUN go get -d -v ./...
RUN go build -v ./...

ENTRYPOINT ["main"]
