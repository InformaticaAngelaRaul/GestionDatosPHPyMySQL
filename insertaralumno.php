<?php
$apellidos=$_POST["apellidos"];
$nombre=$_POST["nombre"];
$nota=$_POST["nota"];

$sql="INSERT INTO `alumnos`(`id`, `nombre`, `apellidos`, `nota`) VALUES (NULL, '".$nombre."','".$apellidos."','".$nota."')";
include("bd.php");

$mysqli->query($sql);

header("location:index.php");

?>