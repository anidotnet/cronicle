<div class="row">

    <!-- left menu starts -->
    <div class="col-sm-2 col-lg-2">
        <div class="sidebar-nav">
            <div class="nav-canvas">
                <div class="nav-sm nav nav-stacked">

                </div>
                <ul class="nav nav-pills nav-stacked main-menu">
                    <li class="nav-header">Menus</li>
                    <li><a class="ajax-link" href="/jobs"><i
                                    class="glyphicon glyphicon-home"></i><span> Job Dashboard</span></a>
                    </li>
                    <li><a class="ajax-link" href="/about"><i
                                    class="glyphicon glyphicon-eye-open"></i><span> About</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--/span-->
    <!-- left menu ends -->

    <noscript>
        <div class="alert alert-block col-md-12">
            <h4 class="alert-heading">Warning!</h4>

            <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
                enabled to use this site.</p>
        </div>
    </noscript>

    <div id="content" class="col-lg-10 col-sm-10">
        <!-- content starts -->
        <div class="row">
            <div class="box col-md-12">
                <div class="box-inner">
                    <div class="box-header well" data-original-title="">
                        <h2><i class="glyphicon glyphicon-user"></i> Scheduled Jobs</h2>

                        <div class="box-icon">
                            <a href="/job/new" class="btn btn-round btn-default"><i class="glyphicon glyphicon-plus-sign"></i></a>
                            <a href="https://github.com/anidotnet/cronicle" class="btn btn-round btn-default"><i class="glyphicon glyphicon-question-sign"></i></a>
                            <a href="#" class="btn btn-minimize btn-round btn-default"><i class="glyphicon glyphicon-chevron-up"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        {{if not .IsError}}
                        <div class="alert alert-info">
                            {{.InfoMessage}}
                        </div>
                        {{end}}
                        {{if .IsError}}
                        <div class="alert alert-danger">
                            <!--Alert Message -->
                            {{.ErrorMessage}}!
                        </div>
                        {{end}}
                        <table class="table table-striped table-bordered bootstrap-datatable datatable responsive">
                            <thead>
                            <tr>
                                <th>JobName</th>
                                <th>Status</th>
                                <th>Result</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            {{range $index, $job := .jobs}}
                            <tr>
                                <td>{{$job.JobName}}</td>
                                <td class="center">
                                    {{if eq $job.Status "Active"}}
                                    <span class="label-success label label-default">{{$job.Status}}</span>
                                    {{end}}
                                    {{if eq $job.Status "InActive"}}
                                    <span class="label-primary label label-default">{{$job.Status}}</span>
                                    {{end}}
                                </td>
                                <td class="center">
                                    {{if eq $job.Result "Success"}}
                                    <span class="label-success label label-default">{{$job.Result}}</span>
                                    {{end}}
                                    {{if eq $job.Result "Failure"}}
                                    <span class="label-danger label label-default">{{$job.Result}}</span>
                                    {{end}}
                                </td>
                                <td class="center">
                                    <!-- Modal Window = http://jsfiddle.net/2AU6q/3/-->
                                    <a class="btn btn-xs btn-success btn-default" data-toggle="modal"
                                       data-target="#myModal-{{$index}}" href="#">
                                        <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                        View
                                    </a>
                                    <a class="btn btn-info btn-xs" href="/job/edit/{{$job.JobId}}">
                                        <i class="glyphicon glyphicon-edit icon-white"></i>
                                        Edit
                                    </a>
                                    <a class="btn btn-danger btn-xs" href="/job/delete/{{$job.JobId}}">
                                        <i class="glyphicon glyphicon-trash icon-white"></i>
                                        Delete
                                    </a>

                                    <!-- Modal Windows For more details -->
                                    <div class="modal fade" id="myModal-{{$index}}" tabindex="-1" role="dialog"
                                         aria-labelledby="myModalLabel"
                                         aria-hidden="true">

                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">×</button>
                                                    <h3>Details of {{$job.JobName}}</h3>
                                                </div>
                                                <div class="modal-body">
                                                    <table class="table table-responsive">
                                                        <tbody>
                                                        <tr>
                                                            <td><b>CronExpression</b></td>
                                                            <td>{{$job.CronExpression}}</td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>LastRun</b></td>
                                                            <td>{{$job.LastRun}}</td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>NextRun</b></td>
                                                            <td>{{$job.NextRun}}</td>
                                                        </tr>
                                                        <tr>
                                                            <td><b>Program</b></td>
                                                            <td>{{$job.RunScript}}</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="modal-footer">
                                                    <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            {{end}}

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!--/span-->
        </div>
        <!--/row-->
        <!-- content ends -->
    </div>
    <!--/#content.col-md-0-->
</div><!--/fluid-row-->

