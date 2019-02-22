<?php
    
    $query_result=$obj_sup_admin->select_all_product_info();
  
?>
<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon user"></i><span class="break"></span>All Product info goes here</h2>
            <div class="box-icon">
                <a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
                <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
            </div>
        </div>
        <h2>
            <?php
                if(isset($meassage)) {
                    echo $meassage;
                }
                unset($meassage);
            ?>
        </h2>
        <h2>
            <?php
                if(isset($_SESSION['message'])) {
                    echo $_SESSION['message'];
                    unset($_SESSION['message']);
                }
                
            ?>
        </h2>
        
        <div class="box-content">
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Category Name</th>
                        <th>Manufacturer Name</th>
                        <th>Product Price</th>
                        <th>Stock Amount</th>
                        <th>Publication Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>   
                <tbody>
    <?php while ( $product_info=mysqli_fetch_assoc($query_result) ) { ?>
                    <tr>
                        <td><?php echo $product_info['product_name'];?></td>
                        <td class="center"><?php echo $product_info['category_name'];?></td>
                        <td class="center"><?php echo $product_info['manufacturer_name'];?></td>
                        <td class="center"><?php echo $product_info['product_price'];?></td>
                        <td class="center"><?php echo $product_info['stock_quantity'];?></td>
                        <td class="center">
                            <?php
                                if( $product_info['product_name'] == 1) {
                                    echo 'Published';
                                } else { echo 'Unpublished'; }
                                ?>
                        </td>
                        <td class="center">
                            <a class="btn btn-info" href="view_product.php?id=<?php echo $product_info['product_id'];?>" title="View Product">
                                <i class="halflings-icon white zoom-in"></i>  
                            </a>
                            <a class="btn btn-success" href="" title="Unpublished">
                                <i class="halflings-icon white arrow-down"></i>  
                            </a>
                            <a class="btn btn-info" href="" title="Edit">
                                <i class="halflings-icon white edit"></i>  
                            </a>
                            <a class="btn btn-danger" href="" title="Delete" onclick="return check_delete_info(); ">
                                <i class="halflings-icon white trash"></i> 
                            </a>
                        </td>
                    </tr>
    <?php } ?>
                </tbody>
            </table>            
        </div>
    </div><!--/span-->
</div>