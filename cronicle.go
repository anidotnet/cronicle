package main

import (
	"github.com/astaxie/beego/logs"
	_"github.com/anidotnet/cronicle/routers"
	"github.com/astaxie/beego"
)

var (
	log 	*logs.BeeLogger
)

func main() {
	initApp()
	beego.Run()
}

func initApp() {
	initLog()
}

func initLog() {
	log = logs.NewLogger(10000)
	log.SetLogger("console", "")
	log.Debug("Logger initialized.")
}
