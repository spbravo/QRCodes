FROM  --platform=linux/amd64 golang:1.17 AS builder

WORKDIR /go/src/QRCodes
COPY . .
RUN ln -s /lib/libc.musl-x86_64.so.1 /lib/ld-linux-x86-64.so.2
RUN go get -d -v ./...

# Build the binary.
RUN go build -o /go/bin/main
############################
# STEP 2 build a small image
############################
FROM scratch
# Copy our static executable.
COPY --from=builder /go/bin/main /go/bin/main
# Run the main binary.
ENTRYPOINT ["/go/bin/main"]

