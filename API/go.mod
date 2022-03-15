module API

go 1.17

require (
	dependencia.es/Qrcode/qrcode v0.0.0
	github.com/gorilla/mux v1.8.0
)

require github.com/skip2/go-qrcode v0.0.0-20200617195104-da1b6568686e // indirect

replace dependencia.es/Qrcode/qrcode => ../Qrcode
