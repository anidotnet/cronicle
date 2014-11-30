package controllers

import (
	"github.com/astaxie/beego"
)

type LoginController struct {
	beego.Controller
}

func (c *LoginController) Get() {
	if c.GetSession("User") != nil {
		c.Redirect("/jobs", 302)
	} else {
		c.Layout = "layout.html"
		c.TplNames = "login.tpl"
	}
}

func (c *LoginController) Post() {
	if c.GetSession("User") != nil {
		c.Redirect("/jobs", 302)
	} else {
		user := c.GetString("Username")
		password := c.GetString("Password")
		if isValidUser(user, password) {
			c.Data["LoginFailed"] = false
			c.SetSession("User", user)
			c.Redirect("/jobs", 302)
		} else {
			c.Data["LoginFailed"] = true
			c.Layout = "layout.html"
			c.TplNames = "login.tpl"
		}
	}
}

func (c *LoginController) Logout() {
	c.Data["LoginFailed"] = false
	defer c.DestroySession()
	c.Layout = "layout.html"
	c.TplNames = "login.tpl"
}

func isValidUser(user string, password string) bool {
	if user == "" {
		return false
	}

	if password == "" {
		return false
	}

	return true
}
