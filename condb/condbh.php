<?php
  
    $hservername ="127.0..1";
    $husername ="sa";
    $hpassword ="sa";
    $hdbname ="hos";

    $connh =new mysqli($hservername, $husername, $hpassword, $hdbname);
    if (!$connh) {
        die("Connection Failed". mysqli_connect_error());
    }
    //else{echo "Connected Successfully";}

    $connh ->set_charset("utf8");
    date_default_timezone_set('Asia/Bangkok');

     
 ?>