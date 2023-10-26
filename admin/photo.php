<?php 
include('./connectToDb.php');
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
$sql="INSERT INTO products (categories_id, date, name, linecse, dimension, format, status, image, views) 
VALUES (?, ?, ?, ?, ?, ?, ?, ?, '250')";
$stmt=$connect->prepare($sql);
$photoDate = $_GET['date'];
$title = $_GET['title'];
$license = $_GET['license'];
$dimension = $_GET['dimension'];
$format = $_GET['format'];
$isactive = isset($_GET['isactive']) ? 1 : 0;
$category_id = $_GET['category_id'];
$image = $_GET['image'];

$stmt->execute([$category_id, $photoDate, $title, $license, $dimension, $format, $isactive, $image]);


echo"<your submitted data <br/>";
header("Refresh: 2; url=addPhoto.php");


}

?>