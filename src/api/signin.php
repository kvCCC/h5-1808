<?php
    $mima = isset($_GET['mima'])? $_GET['mima'] : "";
	$name = isset($_GET['name'])? $_GET['name'] : "";
    // echo $name;
    // echo $mima;
	$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'student';
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die($conn->connect_error);
    }
    $conn->set_charset('utf8');
    $sql = "insert into sign (name,mima) values ('".$name . "','".$mima. "')";
    $res = $conn->query($sql);
     // echo $res;
    if($res){
        echo "cheng";
    }else{
        echo "not";
    }
    $conn->close();
?>