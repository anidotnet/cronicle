package controllers

import (
	"github.com/astaxie/beego"
)

type CronController struct {
	beego.Controller
}

func (c *CronController) Get(){
	// list all scheduled jobs
	beego.Debug("Listing all scheduled jobs..")
	c.TplNames = "index.tpl"
}

