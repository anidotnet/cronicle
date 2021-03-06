package routers

import (
	"github.com/anidotnet/cronicle/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
	beego.Router("/jobs", &controllers.CronController{})
	beego.Router("/login", &controllers.LoginController{})
	beego.Router("/logout", &controllers.LoginController{}, "get:Logout")
	beego.Router("/newjob", &controllers.JobController{}, "get:GetNewJob")
	beego.Router("/newjob", &controllers.JobController{}, "post:PostNewJob")
	beego.Router("/editjob", &controllers.JobController{}, "get:GetEditJob")
	beego.Router("/editjob", &controllers.JobController{}, "post:PostEditJob")
}
