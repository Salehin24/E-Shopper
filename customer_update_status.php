<?php
$en_customer_id=$_GET['id'];
echo $en_customer_id;
echo '<br/>...........................<br/>';
$customer_id=base64_decode($en_customer_id);
echo $customer_id;