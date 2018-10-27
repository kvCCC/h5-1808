<?php
    $show = isset($_GET["show"])? $_GET["show"] : false;
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
   
    if($show === "true"){
     $sql = 'select * from details order by timer desc ';
     // echo $show;
    }else if($show === "false"){
    $sql = 'select * from details order by timer asc ';
    // echo $show;
    }

     $result = $conn->query($sql);
     $arr = $result->fetch_all(MYSQLI_ASSOC);
     
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    $result->close();
    $conn->close();

?>