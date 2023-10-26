<?php
include('./admin/connectToDb.php');
$id=$_GET['id'];
$stmt = $connect->prepare("SELECT products.name, categories.categories
FROM products
INNER JOIN categories ON products.categories_id = categories.id
WHERE products.id = ?");

$stmt->execute([$id]);

$result = $stmt->fetchAll();



?>