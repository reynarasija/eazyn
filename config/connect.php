<?php

$username = "root";
$password = "123";
$host = "localhost";
$database = "eazyn";

$is_connect = mysqli_connect($host, $username, $password, $database);


if($is_connect){
    echo 'sudah konek';
} 
else {
    echo 'yah gagal';
}
    