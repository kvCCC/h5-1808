<?php
    $name = isset($_GET['name'])? $_GET['name'] : "";
    $mima = isset($_GET['mima'])? $_GET['mima'] : "";
    // echo $name;
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'student';
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die($conn->connect_error);
    }
    $conn->set_charset('utf8');
    $sql = "select * from sign where name='" .addslashes($name) . "'and mima='".addslashes($mima)."'";
    $res = $conn->query($sql);
    if($res->num_rows > 0){
        echo "exist";
    }else{
        echo "can";
    }
    $conn->close();
?>