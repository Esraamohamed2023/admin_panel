<?php
include('./connectToDb.php');
$id=$_GET['id'];

$sql = "UPDATE  admin_users SET name='new' ,email='new' WHERE id= $id";
  
$connect ->exec($sql);






?>