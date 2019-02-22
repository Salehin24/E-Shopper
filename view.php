<?php
require './classes/admin.php';
$obj_admin=new Admin(10);
$obj_admin->add(100, 300);
echo $obj_admin->name;