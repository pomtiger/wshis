<?php
    //require_once('condb/condb.php');

    //ตัวแปรรับค่า name post จากฟอร์ม

    $m_username = $_POST['m_username'];
    $m_password = $_POST['m_password'];    
    $m_fname = $_POST['m_fname'];
    $m_lname = $_POST['m_lname'];   
    $m_cid = $_POST['m_cid'];

    //เช็คข้อมูลซ้ำ member
  $check = "SELECT  m_username 
            FROM td_member 
            WHERE m_username ='$m_username' OR m_cid ='$m_cid' ";
            /* WHERE m_username = '$m_username' "; */ //เช็คตัวเดียว

$result1 = mysqli_query($conn, $check) or die(mysqli_connect_error());

$num=mysqli_num_rows($result1);

if($num > 0) {//เช็คข้อมูลซ้ำ admin
  echo "<script>";
  echo "alert('ชื่อผู้ใช้ หรือ รหัสประจำตัว 13หลัก ซ้ำ! กรุณาเพิ่มใหม่อีกครั้ง! : Username OR CID already exists');";
  /* echo "window.history.back();"; */  //ย้อนกลับ แต่บางมี error ทำต่อไม่ได้ mysqli close
  echo "window.location ='register_form.php'; "; //เด้งไปหน้า
  echo "</script>";
}
else{    //ปีกกาแรก
  $sql ="INSERT INTO td_member
        (m_username,  m_password, m_fname, m_lname, m_cid)
        VALUES
        ('$m_username', '$m_password', '$m_fname', '$m_lname', '$m_cid')";

  $result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_connect_error());
  
  mysqli_close($conn);
}   //ปีกกาปิด เช็คข้อมูลซ้ำ

    //จาวาสคริปแสดงข้อความเมื่อบันทึกเสร็จและกระโดดกลับไปหน้าฟอร์ม    
    if($result){
      echo "<script>";
      echo "alert('Register Succesfuly : ลงทะเบียนสมาชิกสำเร็จ');";
      echo "window.location ='index.php'; "; //เด้งไปหน้า
      echo "</script>";
    } 
    else {      
      echo "<script>";
      echo "alert('ERROR Register Add!:ลงทะเบียนไม่สำเร็จว่ะ ว้ายๆ');";
      echo "window.location ='register_form.php'; ";
      echo "</script>";
    }
?>