<?php
$host="localhost";
$usuario="root";
$password="1234";
$bd="clase";

$mysqli = new mysqli($host,$usuario,$password,$bd);

if($mysqli->connect_errno){

    echo  $mysqli->connect_errno;

    exit;
}

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

?>