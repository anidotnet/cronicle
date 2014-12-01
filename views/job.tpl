<div class="row">
    <div id="content" class="well col-md-5 center">
        {{if .IfAddNew}}
            {{if .AddFailed}}
            <div class="alert alert-danger">
                {{.ErrorMessage}}
            </div>
            {{end}}

            <form class="form-horizontal" action="/newjob" method="post" role="form">
                <fieldset>
                    <div class="input-group input-group-sm">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
                        <input type="text" class="form-control" placeholder="Job name to schedule (must be unique)"
                               name="JobName">
                    </div>
                    <div class="clearfix"></div>
                    <br>

                    <div class="input-group input-group-sm">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        <input type="text" class="form-control" placeholder="Cron expression (e.g. 0/5 * * * *)"
                               name="CronExpression">
                        <a data-toggle="modal" data-target="#myModal" href="#" class="input-group-addon btn"><i
                                    class="glyphicon glyphicon-question-sign"></i></a>
                    </div>
                    <div class="clearfix"></div>
                    <br>

                    <div class="input-group input-group-sm">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                        <input type="text" class="form-control" placeholder="Path of the program to schedule"
                               name="RunScript">
                    </div>
                    <div class="clearfix"></div>
                    <br>

                    <p>
                        <button type="submit" class="btn btn-primary">Create</button>
                    </p>

                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                         aria-labelledby="myModalLabel"
                         aria-hidden="true">

                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">×</button>
                                    <h3>Cron Expression?</h3>
                                </div>
                                <div class="modal-body">
                                    <div class="well box-content">
                                        <h3>Sample text and paragraphs</h3>

                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum
                                            ornare dolor,
                                            quis ullamcorper ligula sodales at. Nulla tellus elit, varius non commodo eget,
                                            mattis vel
                                            eros. In sed ornare nulla. Donec consectetur, velit a pharetra ultricies, diam
                                            lorem lacinia
                                            risus, ac commodo orci erat eu massa. Sed sit amet nulla ipsum. Donec felis
                                            mauris,
                                            vulputate sed tempor at, aliquam a ligula. Pellentesque non pulvinar nisi.
                                        </p>

                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum
                                            ornare dolor,
                                            quis ullamcorper ligula sodales at. Nulla tellus elit, varius non commodo eget,
                                            mattis vel
                                            eros. In sed ornare nulla. Donec consectetur, velit a pharetra ultricies, diam
                                            lorem lacinia
                                            risus, ac commodo orci erat eu massa. Sed sit amet nulla ipsum. Donec felis
                                            mauris,
                                            vulputate sed tempor at, aliquam a ligula. Pellentesque non pulvinar nisi.
                                        </p>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </form>
        {{end}}
        {{if not .IfAddNew}}
            {{if .EditFailed}}
            <div class="alert alert-danger">
                {{.ErrorMessage}}
            </div>
            {{end}}

            <form class="form-horizontal" action="/editjob" method="post" role="form">
                <fieldset>
                    <input type=hidden name=JobId value="{{.JobId}}">

                    <div class="input-group input-group-sm">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
                        <input type="text" class="form-control" placeholder="Job name to schedule (must be unique)"
                               name="JobName">
                    </div>
                    <div class="clearfix"></div>
                    <br>

                    <div class="input-group input-group-sm">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        <input type="text" class="form-control" placeholder="Cron expression (e.g. 0/5 * * * *)"
                               name="CronExpression">
                        <a data-toggle="modal" data-target="#myModal" href="#" class="input-group-addon btn"><i
                                    class="glyphicon glyphicon-question-sign"></i></a>
                    </div>
                    <div class="clearfix"></div>
                    <br>

                    <div class="input-group input-group-sm">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                        <input type="text" class="form-control" placeholder="Path of the program to schedule"
                               name="RunScript">
                    </div>
                    <div class="clearfix"></div>
                    <br>

                    <p>
                        <button type="submit" class="btn btn-primary">Edit</button>
                    </p>

                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                         aria-labelledby="myModalLabel"
                         aria-hidden="true">

                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">×</button>
                                    <h3>Cron Expression?</h3>
                                </div>
                                <div class="modal-body">
                                    <div class="well box-content">
                                        <h3>Sample text and paragraphs</h3>

                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum
                                            ornare dolor,
                                            quis ullamcorper ligula sodales at. Nulla tellus elit, varius non commodo eget,
                                            mattis vel
                                            eros. In sed ornare nulla. Donec consectetur, velit a pharetra ultricies, diam
                                            lorem lacinia
                                            risus, ac commodo orci erat eu massa. Sed sit amet nulla ipsum. Donec felis
                                            mauris,
                                            vulputate sed tempor at, aliquam a ligula. Pellentesque non pulvinar nisi.
                                        </p>

                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum
                                            ornare dolor,
                                            quis ullamcorper ligula sodales at. Nulla tellus elit, varius non commodo eget,
                                            mattis vel
                                            eros. In sed ornare nulla. Donec consectetur, velit a pharetra ultricies, diam
                                            lorem lacinia
                                            risus, ac commodo orci erat eu massa. Sed sit amet nulla ipsum. Donec felis
                                            mauris,
                                            vulputate sed tempor at, aliquam a ligula. Pellentesque non pulvinar nisi.
                                        </p>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </form>
        {{end}}
    </div>
</div>