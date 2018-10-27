<?php
	 $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'student';

    // 1.创建与数据库的连接
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset("utf8");
    if ($conn->connect_error) {
        die($conn->connect_error);
    } 
     $sql = 'select * from details';
     $result = $conn->query($sql);
     $arr = $result->fetch_all(MYSQLI_ASSOC);
     
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    $result->close();
    $conn->close();

?>