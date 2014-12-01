<div class="row">
    <div id="content" class="well col-md-5 center">
        {{if .AddFailed}}
        <div class="alert alert-danger">
            {{.ErrorMessage}}
        </div>
        {{end}}

        <form class="form-horizontal" action="/newjob" method="post" role="form">
            <fieldset>
                <div class="input-group input-group-sm">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
                    <input type="text" class="form-control" placeholder="Job name to schedule (must be unique)" name="JobName">
                </div>
                <div class="clearfix"></div><br>

                <div class="input-group input-group-sm">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                    <input type="text" class="form-control" placeholder="Cron expression (e.g. 0/5 * * * *)" name="CronExpression">
                    <a href="https://godoc.org/github.com/robfig/cron" target="_blank" class="input-group-addon btn"><i class="glyphicon glyphicon-question-sign"></i></a>
                </div>
                <div class="clearfix"></div><br>

                <div class="input-group input-group-sm">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                    <input type="text" class="form-control" placeholder="Path of the program to schedule" name="RunScript">
                </div>
                <div class="clearfix"></div><br>

                <p>
                    <button type="submit" class="btn btn-primary">Create</button>
                </p>
            </fieldset>
        </form>
    </div>
</div>