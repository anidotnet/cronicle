package controllers

import (
	"github.com/astaxie/beego"
	"github.com/anidotnet/cronicle/models"
	"time"
	uuid "github.com/nu7hatch/gouuid"
)

type CronController struct {
	beego.Controller
}

func (c *CronController) Get(){
	if c.GetSession("User") != nil {
		beego.Debug("Listing all scheduled jobs..")
		user := c.GetSession("User")
		c.Data["User"] = user
		jobs := getJobs(user.(string))
		c.Data["jobs"] = jobs
		c.Layout = "layout.html"
		c.TplNames = "jobs.tpl"
	} else {
		c.Layout = "layout.html"
		c.TplNames = "login.tpl"
	}
}

func getJobs(user string) []*models.Job {
	jobs := make([]*models.Job, 2)

	job1 := new(models.Job)
	job1.JobId, _ = uuid.NewV4()
	job1.CronExpression = "00 * * * *"
	job1.JobName = "Name1"
	job1.LastRun = time.Now()
	duration, _ := time.ParseDuration("1.5h")
	job1.NextRun = time.Now().Add(duration)
	job1.Result = models.SUCCESS
	job1.Status = models.ACTIVE
	job1.User = "1E"
	jobs[0] = job1

	job2 := new(models.Job)
	job2.JobId, _ = uuid.NewV4()
	job2.CronExpression = "00 5 * * *"
	job2.JobName = "Name2"
	job2.LastRun = time.Now()
	duration, _ = time.ParseDuration("0.5h")
	job2.NextRun = time.Now().Add(duration)
	job2.Result = models.FAILURE
	job2.Status = models.INACTIVE
	job2.User = "2E"
	jobs[1] = job2

	return jobs
}



