<?php
if(isset($_POST['btn'])) {
        require 'dompdf/dompdf_config.inc.php';
        $obj_dom=new DOMPDF();

        //$pdf_content=$_POST['pdf_content'];
        $pdf_content=  file_get_contents('test.php');
        $obj_dom->load_html($pdf_content);
        $obj_dom->render();
        $obj_dom->stream('demo.pdf');
}


?>

<form action="" method="post">
    <table>
        <tr>
            <td>Enter your text</td>
            <td><textarea name="pdf_content"></textarea></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" name="btn" value="Submit"></td>
        </tr>
    </table>
</form>