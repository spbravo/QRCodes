package main

import (
	"fmt"
	"image/color"
	"os"

	"github.com/skip2/go-qrcode"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Fprintf(os.Stderr, "usage: QRCodes Something-to-Codify \n")
		os.Exit(1)
	}
	//var png []byte
	//png, err := qrcode.Encode("https://example.org", qrcode.Medium, 256)

	//err := qrcode.WriteFile("https://www.google.es", qrcode.Medium, 256, "qr1.png")
	err := qrcode.WriteColorFile(os.Args[1], qrcode.Medium, 256, color.Black, color.White, "/var/log/qr1.png")
	if err != nil {
		fmt.Println("Ha habido un error %v", err)
	}
	//err := qrcode.WriteColorFile("https://example.org", qrcode.Medium, 256, color.Black, color.White, "qr1.png")

}
