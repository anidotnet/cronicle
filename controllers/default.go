package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	if c.GetSession("User") != "" {
		c.Data["User"] = c.GetSession("User")
		c.Redirect("/jobs", 302)
	} else {
		c.Data["LoginFailed"] = false
		c.Redirect("/login", 302)
	}
}
