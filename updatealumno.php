<?php
$apellidos=$_POST["apellidos"];
$nombre=$_POST["nombre"];
$id=$_POST["id"];
$nota=$_POST["nota"];

$sql="UPDATE `alumnos` SET `apellidos`='".$apellidos."',`nombre`='".$nombre."',`nota`='".$nota."' WHERE `id`=".$id;
include("bd.php");
$mysqli->query($sql);

header("location:index.php");

?>