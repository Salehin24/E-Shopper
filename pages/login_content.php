<?php
$message = null;
    if(isset($_POST['btn'])) {
        $obj_app->customer_registration_info($_POST);
    }
	if(isset($_POST['login'])){
		$message = $obj_app->customer_login_check_index($_POST);
	}

    
?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="col-lg-6">
                            <div class="well">
							
                                <h3 class="text-center text-success">Registration Point Here.</h3>
                                <hr/>
                                <form role="form" class="form-horizontal" action="" method="post">
                                    <div class="form-group">
                                        <label class="control-label col-lg-3">First Name</label>
                                        <div class="col-lg-9">
                                            <input type="text" name="first_name" class="form-control" required />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-3">Last Name</label>
                                        <div class="col-lg-9">
                                            <input type="text" name="last_name" class="form-control" required />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-3">Email Address</label>
                                        <div class="col-lg-9">
                                            <input type="email" name="email_address" class="form-control" required />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-3">Password</label>
                                        <div class="col-lg-9">
                                            <input type="password" name="password" class="form-control" required />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-3">Address</label>
                                        <div class="col-lg-9">
                                            <textarea class="form-control" name="address" style="resize: vertical;" required /></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-3">Phone Number</label>
                                        <div class="col-lg-9">
                                            <input type="number" name="phone_number" class="form-control" required />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-3">District Name</label>
                                        <div class="col-lg-9">
                                            <input type="text" name="district" class="form-control" required /> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-9">
                                            <input type="submit" name="btn" class="btn btn-primary btn-block" value="Registration"> 
                                        </div>
                                    </div>
                                </form>
                        </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="well">
							<h4 class="text-center text-success" ><?php echo $message; ?></h4>
                                <h3 class="text-center text-success">Login Point Here.</h3>
                                <hr/>
                                <form role="form" class="form-horizontal" action="" method="post">
                                    <div class="form-group">
                                        <label class="control-label col-lg-3">Email Address</label>
                                        <div class="col-lg-9">
                                            <input type="email" name="email_address" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-3">Password</label>
                                        <div class="col-lg-9">
                                            <input type="password" name="password" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-9">
                                            <input type="submit" name="login" class="btn btn-primary btn-block" value="Login"> 
                                        </div>
                                    </div>
                                </form>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
