package routers

import (
	"github.com/anidotnet/cronicle/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
	beego.Router("/jobs", &controllers.CronController{})
}
