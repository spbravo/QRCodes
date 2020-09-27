FROM golang:1.14

WORKDIR /QRCodes/src/QRCodes
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["main"]
