FROM golang:1.14

WORKDIR /
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["main"]
