package routers

import (
	"github.com/anidotnet/cronicle/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
}
