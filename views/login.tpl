<div class="row">
    <div class="well col-md-5 center login-box">
        {{if not .LoginFailed}}
        <div class="alert alert-info">
            Please login with your Username and Password.
        </div>
        {{end}}
        {{if .LoginFailed}}
        <div class="alert alert-danger">
            Wrong Username or Password!
        </div>
        {{end}}


        <form class="form-horizontal" action="/login" method="post" role="form">
            <fieldset>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user red"></i></span>
                    <input type="text" class="form-control" placeholder="Username" name="Username">
                </div>
                <div class="clearfix"></div><br>

                <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>
                    <input type="password" class="form-control" placeholder="Password" name="Password">
                </div>
                <div class="clearfix"></div>

                <div class="input-prepend">
                    <label class="remember" for="remember"><input type="checkbox" id="remember"> Remember me</label>
                </div>
                <div class="clearfix"></div>

                <p>
                    <button type="submit" class="btn btn-primary">Login</button>
                    <a href="#" class="btn btn-primary"><i class="glyphicon glyphicon-user"></i> New User</a>
                </p>
            </fieldset>
        </form>
    </div>
    <!--/span-->
</div><!--/row-->