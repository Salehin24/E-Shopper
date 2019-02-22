<?php
    if(isset($_POST['btn'])) {
        $obj_app->save_customer_info($_POST);
    }

    
?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="col-lg-12">
                            <div class="well text-success text-center">
                                <h1>Congratulation <?php echo $_SESSION['customer_name']; ?>. Your order successfully received. We will contact with you soon.</h1>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>