<?php
    $servername ="127.0.0.1";
    $username ="sa";
    $password ="sa";
    $dbname ="p_data";

    $conn =new mysqli($servername, $username, $password, $dbname);
    if (!$conn) {
        die("Connection Failed". mysqli_connect_error());
    }
    //else{echo "Connected Successfully";}

    $conn ->set_charset("utf8");
    date_default_timezone_set('Asia/Bangkok');

 ?>