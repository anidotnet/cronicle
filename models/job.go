package models

import (
	"time"
	uuid "github.com/nu7hatch/gouuid"
)

type Job struct {
	JobId			*uuid.UUID
	User 			string
	JobName 		string
	CronExpression	string
	RunScript		string
	LastRun			time.Time
	NextRun			time.Time
	Status			JobStatus
	Result			RunStatus
	ModifiedOn			time.Time
}

type JobStatus string
type RunStatus string

const (
	ACTIVE		JobStatus = "Active"
	INACTIVE	JobStatus = "InActive"
)

const (
	SUCCESS 	RunStatus = "Success"
	FAILURE		RunStatus = "Failure"
)


