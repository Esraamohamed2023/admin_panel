<?php
include('./connectToDb.php');
$id=$_GET['id'];


  $sql = "DELETE FROM products WHERE id = $id";
  
$connect ->exec($sql);






?>