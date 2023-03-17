<?php

/* echo '<pre>';
print_r($_POST);
echo '</pre>';
exit();
  */

    session_start();
    
    require_once('condb/condb.php');

    //$errors = array(); //ตัวแปรเก็บ error

    if (isset($_POST['m_username'])) {  //รับค่าจาก login_form.php ปุ่ม submit name รับค่า post จาก name



        $m_username = $_POST['m_username']; //รับค่าจาก input
        $m_password = $_POST['m_password'];

        $query_login = "SELECT * FROM td_member WHERE m_username = '$m_username' and m_password = '$m_password' ";

        $result_login = mysqli_query($conn, $query_login);

        /* if (empty($m_username)) { 
            array_push($errors, "๊Username is required");
        }

        if (empty($m_password)) {
            array_push($errors, "Password is required");
        } */

        //if (count($errors) == 0) { //errors เท่ากับ 0
         //   $m_password = $m_password; //$m_password = md5($m_password);
            
           

           /*  echo $query; 
            exit(); */

            if (mysqli_num_rows($result_login) == 1) { //เช็คว่ามีข้อมูลอยู่จริง

                $row =mysqli_fetch_array($result_login);
                    //show
                $_SESSION['m_id'] =$row['m_id'];
                //$_SESSION['m_fname'] =$row['m_fname'];
                $_SESSION['m_level'] =$row['m_level'];

                if ($_SESSION["m_level"]==="ADMIN") {
                    //echo 'R U ADMIN';
                   header("location: admin/");
                }
                if ($_SESSION["m_level"]==="USER") { //เก็บ log member อย่างเดียว
            //echo 'R U STAFF';

            //เก็บข้อมูล log
            // start in sert log รับค่า prd_id มา
            $ref_m_id= $_SESSION['m_id']; //รับค่า session m_id มาแล้ว
                    
                    /* echo $ref_m_id;
                    exit(); */
            $sql_loginlog = "INSERT INTO td_login_log
                (
                    ref_m_id 
                )
                VALUES
                (
                    $ref_m_id
                ) ";   
                 //p_id รับค่ามา
            $result_loginlog = mysqli_query($conn, $sql_loginlog) or die("Error in query: $sql_loginlog" . mysqli_connect_error());
                    /* echo $sql2;
                    exit(); */  
                    //End in sert log รับค่า prd_id มา
                    header("location: member/");
                }
                    
            }else{
                echo "<script>";
                echo "alert('ชื่อผู้ใช้ หรือ รหัสผ่านไม่ถูกต้อง : User OR Password not Found');";
                echo "window.location ='login_form.php'; "; //เด้งไปหน้า
                //echo "window.location = 'member.php?ID=$m_id&act=edit'; ";  //กลับไปหน้าแก้ไขเดิม
                echo "</script>";
                }
            }else{
                echo "window.location ='login_form.php'; ";  
            }   
            mysqli_close($conn); //ปิดการเชื่อมต่อ database 
