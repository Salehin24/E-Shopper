<?php
    $product_id=$_GET['id'];
    $query_result=$obj_sup_admin->select_product_info_by_id($product_id);
    $product_info=mysqli_fetch_assoc($query_result);
//    echo '<pre>';
//    print_r($product_info);
//    exit();
?>
<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon user"></i><span class="break"></span>Product Details info goes here</h2>
            <div class="box-icon">
                <a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
                <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
            </div>
        </div>        
        <div class="box-content">
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                    <tr>
                        <th>Product ID</th>
                        <td><?php echo $product_info['product_id']; ?></td>
                    </tr>
                    <tr>
                        <th>Product Name</th>
                        <td><?php echo $product_info['product_name']; ?></td>
                    </tr>
                    <tr>
                        <th>Category Name</th>
                        <td><?php echo $product_info['category_name']; ?></td>
                    </tr>
                    <tr>
                        <th>Manufacturer Name</th>
                        <td><?php echo $product_info['manufacturer_name']; ?></td>
                    </tr>
                    <tr>
                        <th>Product Price</th>
                        <td><?php echo $product_info['product_price']; ?></td>
                    </tr>
                    <tr>
                        <th>Stock Quantity</th>
                        <td><?php echo $product_info['stock_quantity']; ?></td>
                    </tr>
                    <tr>
                        <th>Product SKU</th>
                        <td><?php echo $product_info['product_sku']; ?></td>
                    </tr>
                    <tr>
                        <th>Product Short Description</th>
                        <td><?php echo $product_info['product_short_description']; ?></td>
                    </tr>
                    <tr>
                        <th>Product Long Description</th>
                        <td><?php echo $product_info['product_long_description']; ?></td>
                    </tr>
                    <tr>
                        <th>Product Image</th>
                        <td>
                            <img src="<?php echo $product_info['product_image']; ?>" alt="<?php echo $product_info['product_name']; ?>"  height="100" width="100">
                        </td>
                    </tr>
                    <tr>
                        <th>Publication Status</th>
                        <td>
                            <?php
                                if( $product_info['publication_status'] == 1) {
                                    echo 'Published';
                                } else { echo 'Unpublished'; }
                                ?>
                        </td>
                    </tr>
            </table>            
        </div>
    </div><!--/span-->
</div>