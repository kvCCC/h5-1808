<?php
    $currentId = isset($_GET['currentId']) ? $_GET['currentId'] : null;
    // 引入connect.php
    // include 'index.php';
   
    /*
        接口功能：查找对应的索引
        所需参数：
            * currentId
     */
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
        
    
    


    // // 查找数据库中是否存在对应商品
    $sql = "select * from details";

    // // 执行sql语句
    $result = $conn->query($sql);
    $data='';
    $arr = $result->fetch_all(MYSQLI_ASSOC);
    // var_dump($arr);
    for($i=0;$i<count($arr);$i++){
        if($arr[$i]["id"]===$currentId){

            $data=$arr[$i];  
        }
    }
    // var_dump($arr);
     echo json_encode($data,JSON_UNESCAPED_UNICODE);
      $result->close();
     $conn->close();
    // if($result->num_rows>0){
    //     echo "no";
    // }else{
    //     echo "yes";
    // }

?>
