<!DOCTYPE html>
<html lang="en">
<head>
    <!--
        ===
        This comment should NOT be removed.

        Charisma v2.0.0

        Copyright 2012-2014 Muhammad Usman
        Licensed under the Apache License v2.0
        http://www.apache.org/licenses/LICENSE-2.0

        http://usman.it
        http://twitter.com/halalit_usman
        ===
    -->
    <meta charset="utf-8">
    <title>Configured Cronicle Jobs</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Cronicle jobs">
    <meta name="author" content="Anindya Chatterjee">

    <!-- The styles -->
    <link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">

    <link href="css/charisma-app.css" rel="stylesheet">
    <link href='bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='css/jquery.noty.css' rel='stylesheet'>
    <link href='css/noty_theme_default.css' rel='stylesheet'>
    <link href='css/elfinder.min.css' rel='stylesheet'>
    <link href='css/elfinder.theme.css' rel='stylesheet'>
    <link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='css/uploadify.css' rel='stylesheet'>
    <link href='css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="bower_components/jquery/jquery.min.js"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="img/favicon.ico">

</head>

<body>
<!-- topbar starts -->
<div class="navbar navbar-default" role="navigation">

    <div class="navbar-inner">
        <button type="button" class="navbar-toggle pull-left animated flip">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/"> <img alt="Charisma Logo" src="img/logo20.png" class="hidden-xs"/>
            <span>Cronicle</span>
        </a>

        <!-- user dropdown starts -->
        <div class="btn-group pull-right">
            <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"> {{.User}}</span>
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="/profile">Profile</a></li>
                <li class="divider"></li>
                <li><a href="/login">Logout</a></li>
            </ul>
        </div>
        <!-- user dropdown ends -->

        <!-- theme selector starts -->
        <div class="btn-group pull-right theme-container animated tada">
            <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <i class="glyphicon glyphicon-tint"></i><span
                        class="hidden-sm hidden-xs"> Change Theme / Skin</span>
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" id="themes">
                <li><a data-value="classic" href="#"><i class="whitespace"></i> Classic</a></li>
                <li><a data-value="cerulean" href="#"><i class="whitespace"></i> Cerulean</a></li>
                <li><a data-value="cyborg" href="#"><i class="whitespace"></i> Cyborg</a></li>
                <li><a data-value="simplex" href="#"><i class="whitespace"></i> Simplex</a></li>
                <li><a data-value="darkly" href="#"><i class="whitespace"></i> Darkly</a></li>
                <li><a data-value="lumen" href="#"><i class="whitespace"></i> Lumen</a></li>
                <li><a data-value="slate" href="#"><i class="whitespace"></i> Slate</a></li>
                <li><a data-value="spacelab" href="#"><i class="whitespace"></i> Spacelab</a></li>
                <li><a data-value="united" href="#"><i class="whitespace"></i> United</a></li>
            </ul>
        </div>
        <!-- theme selector ends -->

        <ul class="collapse navbar-collapse nav navbar-nav top-menu">
            <li><a href="https://github.com/anidotnet/cronicle"><i class="glyphicon glyphicon-globe"></i> Visit Site</a></li>
        </ul>

    </div>
</div>
<!-- topbar ends -->
<div class="ch-container">
    <div class="row">

        <!-- left menu starts -->
        <div class="col-sm-2 col-lg-2">
            <div class="sidebar-nav">
                <div class="nav-canvas">
                    <div class="nav-sm nav nav-stacked">

                    </div>
                    <ul class="nav nav-pills nav-stacked main-menu">
                        <li class="nav-header">Menus</li>
                        <li><a class="ajax-link" href="/"><i class="glyphicon glyphicon-globe"></i><span> Main</span></a></li>
                        <li><a class="ajax-link" href="/jobs"><i class="glyphicon glyphicon-home"></i><span> Job Dashboard</span></a>
                        </li>
                        <li><a class="ajax-link" href="/about"><i class="glyphicon glyphicon-eye-open"></i><span> About</span></a>
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
            <div>
                <ul class="breadcrumb">
                    <li>
                        <a href="#">Home</a>
                    </li>
                    <li>
                        <a href="#">Jobs</a>
                    </li>
                </ul>
            </div>

            <div class="row">
                <div class="box col-md-12">
                    <div class="box-inner">
                        <div class="box-header well" data-original-title="">
                            <h2><i class="glyphicon glyphicon-user"></i> Scheduled Jobs</h2>

                            <div class="box-icon">
                                <!--<a href="#" class="btn btn-setting btn-round btn-default"><i class="glyphicon glyphicon-cog"></i></a>-->
                                <a href="#" class="btn btn-minimize btn-round btn-default"><i
                                            class="glyphicon glyphicon-chevron-up"></i></a>
                                <a href="#" class="btn btn-close btn-round btn-default"><i class="glyphicon glyphicon-remove"></i></a>
                            </div>
                        </div>
                        <div class="box-content">
                            <div class="alert alert-info">For help with how to create and schedule a job please check <a href="https://github.com/anidotnet/cronicle" target="_blank">https://github.com/anidotnet/cronicle</a></div>
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
                                        <a class="btn btn-xs btn-success btn-default" data-toggle="modal" data-target="#myModal-{{$index}}" href="#">
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
                                        <div class="modal fade" id="myModal-{{$index}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                                             aria-hidden="true">

                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">×</button>
                                                        <h3>Details of {{$job.JobName}}</h3>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>CronExpression:  {{$job.CronExpression}}</p>
                                                        <p>LastRun       :  {{$job.LastRun}}</p>
                                                        <p>NextRun       :  {{$job.NextRun}}</p>
                                                        <p>Program       :  {{$job.RunScript}}</p>
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

            </div><!--/row-->



            <!-- content ends -->
        </div><!--/#content.col-md-0-->
    </div><!--/fluid-row-->

    <!-- Ad, you can remove it -->
    <div class="row">
        <div class="col-md-1 col-lg-1 col-sm-12 col-xs-12 donate">
            <div>
                <small>Help development of Cronicle</small>
            </div>
            <a class="btn btn-default" href="http://flattr.com/thing/1507720/usmanhalalitcharisma-on-GitHub"
               target="_blank"><i class="glyphicon glyphicon-usd green"></i> Donate</a>
        </div>

    </div>
    <!-- Ad ends -->

    <hr>

    <footer class="row">
        <p class="col-md-9 col-sm-9 col-xs-12 copyright">&copy; <a href="https://github.com/anidotnet" target="_blank">Anindya Chatterjee</a> 2014</p>

        <p class="col-md-3 col-sm-3 col-xs-12 powered-by">Powered by: <a
                    href="http://usman.it/free-responsive-admin-template">Charisma</a></p>
    </footer>

</div><!--/.fluid-container-->

<!-- external javascript -->

<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='bower_components/moment/min/moment.min.js'></script>
<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="js/charisma.js"></script>


</body>
</html>
