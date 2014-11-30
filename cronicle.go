package main

import (
	_"github.com/anidotnet/cronicle/routers"
	"github.com/astaxie/beego"
)

func main() {
	initApp()
	beego.Run()
}

func initApp() {
	initLog()
	initContents()
	initSession()
}

func initSession() {
	beego.SessionOn = true
	beego.SessionProvider = "file"
	beego.SessionSavePath = "./tmp"
}

func initContents() {
	beego.SetStaticPath("/img", "views/img")
	beego.SetStaticPath("/js", "views/js")
	beego.SetStaticPath("/css", "views/css")
	beego.SetStaticPath("/fonts", "views/fonts")
	beego.SetStaticPath("/bower_components", "views/bower_components")
}

func initLog() {
	beego.Debug("Logger initialized.")
}
