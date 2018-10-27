<?php

    // $admin= isset($_GET['admin'])? $_GET['admin'] :"";
    $removecar= isset($_GET['removecar'])? $_GET['removecar'] :"";

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'student';

    // 1.创建连接,生成了conn对象
    $conn = new mysqli($servername, $username, $password, $dbname);
    // 2.0 查询前设置编码，防止输出乱码
    $conn->set_charset('utf8');
    
        if($removecar=="yes"){
            $remove =' delete from car ';
           $_remove = $conn->query($remove);
           echo "true";
        }
    
   
?>