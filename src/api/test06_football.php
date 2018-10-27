<?php
  $currentPage = isset($_GET["currentPage"])? $_GET["currentPage"]:1;
    $qty = isset($_GET["qty"])? $_GET["qty"]:24;

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
   $result->close();
     $conn->close();
  $len = count($arr);
 $dataArr = array_slice($arr,($currentPage-1)*$qty,$qty);
 $resArr = array(
        "data" => $dataArr,
        "len" => $len,
        "currentPage" => $currentPage,
        "qty" => $qty
        );

    echo json_encode($resArr,JSON_UNESCAPED_UNICODE);
?>
