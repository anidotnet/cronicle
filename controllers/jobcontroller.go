package controllers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context"
)

type JobController struct {
	beego.Controller
}

func (c *JobController) GetNewJob() {
	c.Data["User"] = c.GetSession("User")
	c.Data["IfAddNew"] = true
	c.Layout = "layout.html"
	c.TplNames = "job.tpl"
}

func (c *JobController) PostNewJob() {
	c.Redirect("/jobs", 302)
}

func (c *JobController) GetEditJob() {
	var jobId string
	var input *context.BeegoInput
	input = c.Ctx.Input
	input.Bind(&jobId, "jobId")
	c.Data["User"] = c.GetSession("User")
	c.Data["JobId"] = jobId
	c.Data["IfAddNew"] = false
	c.Layout = "layout.html"
	c.TplNames = "job.tpl"
}

func (c *JobController) PostEditJob() {
	jobId := c.GetString("JobId")
	c.Data["JobId"] = nil
	beego.Debug("Job to edit " + jobId)
	c.Redirect("/jobs", 302)
}



