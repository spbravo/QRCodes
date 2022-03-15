module dependencia.es

go 1.17

require dependencia.es/API/ApiAcess v0.0.0

require (
	dependencia.es/Qrcode/qrcode v0.0.0 // indirect
	github.com/gorilla/mux v1.8.0 // indirect
	github.com/skip2/go-qrcode v0.0.0-20200617195104-da1b6568686e // indirect
)

replace dependencia.es/API/ApiAcess => ./API

replace dependencia.es/Qrcode/qrcode => ./Qrcode
