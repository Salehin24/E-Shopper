<?php
    $con=  mysqli_connect('localhost', 'root', '');
    mysqli_select_db($con, 'eshopper');
    
    if(isset($_POST['btn'])) {
        require './dompdf/dompdf_config.inc.php';
        $obj_demo=new DOMPDF();
        
        $sql="SELECT * FROM tbl_customer LIMIT 2,4";
        $query_result=mysqli_query($con, $sql);
        
        $pdf_content="
           <table border='1'>
                <tr>
                    <td>Name</td>
                    <td>Mobile</td>
                    <td>Email</td>
                </tr>     
                ";
        while ($row=  mysqli_fetch_assoc($query_result)) {
        $pdf_content.="
                <tr>
                    <td>$row[first_name] $row[last_name]</td>
                    <td>$row[phone_number] </td>
                    <td>$row[email_address] </td>
                </tr>
            ";
        }
        $pdf_content.="
            </table>
            ";
        
        $obj_demo->load_html($pdf_content);
        $obj_demo->render();
        $obj_demo->stream('demo.pdf');
    }
    
    $sql="SELECT * FROM tbl_customer";
    $query_result=mysqli_query($con, $sql);
    
?>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Mobile</td>
        <td>Email</td>
    </tr>
    <?php while ($row=  mysqli_fetch_assoc($query_result)) { ?>
    <tr>
        <td><?php echo $row['first_name'].' '.$row['last_name']; ?></td>
        <td><?php echo $row['phone_number']; ?></td>
        <td><?php echo $row['email_address']; ?></td>
    </tr>
    <?php } ?>
</table>
<hr/>
<form action="" method="post">
    <input type="submit" name="btn" value="Create PDF">
</form>

