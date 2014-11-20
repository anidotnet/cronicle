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
}

func initLog() {
	beego.Debug("Logger initialized.")
}
