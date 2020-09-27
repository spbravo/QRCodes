FROM golang:1.14

WORKDIR /QRCodes
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["main"]
