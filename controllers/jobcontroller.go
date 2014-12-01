package controllers

import (
	"github.com/astaxie/beego"
)

type JobController struct {
	beego.Controller
}

func (c *JobController) Get() {
	c.Layout = "layout.html"
	c.TplNames = "job.tpl"
}

