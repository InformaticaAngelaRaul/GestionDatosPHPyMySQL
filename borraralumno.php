<?php

$id=$_GET["id"];

$sql="DELETE FROM `alumnos` where `id`=".$id;
include("bd.php");

$mysqli->query($sql);

header("location:index.php");

?>