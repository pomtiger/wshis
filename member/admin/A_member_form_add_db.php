<?php
    require_once('../condb/condb.php');

    //ตัวแปรรับค่า name post จากฟอร์ม

    $m_username = $_POST['m_username'];
    $m_password = $_POST['m_password'];
    $m_pname = $_POST['m_pname'];
    $m_fname = $_POST['m_fname'];
    $m_lname = $_POST['m_lname'];
    $m_cid = $_POST['m_cid'];
    $m_email = $_POST['m_email'];    
    $m_address = $_POST['m_address'];
    $m_phone = $_POST['m_phone'];
    $m_level = $_POST['m_level'];

    	//img
		//สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลด
  $date1 = date("Ymd_His");
    //สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
  $numrand = (mt_rand());
  //ตัวแปรรับค่าจาก ฟอร์ม เอาใว้บันทัดบนได้
  $m_img =(isset($_POST['m_img']) ? $_POST['m_img'] :'');
  
    $upload=$_FILES['m_img']['name'];
    if($upload <> '') {  //if($upload !='')ไม่ใช่ค่าว่างได้หมด
      //โฟลเดอร์ที่เก็บไฟล์
    $path="../img/";		
      //ตัดขื่อกับนามสกุลภาพออกจากกัน ตัวแปรตัดชื่อภาพให้เหลือแต่นามสกุล
      $type = strrchr($_FILES['m_img']['name'],".");
      //ตั้งชื่อไฟล์ใหม่เป็น ชื่อ โฟลเดอร์+สุ่มตัวเลข+วันที่+นามสกุล ไม่ใ่ส่ 'prd_img'ก็ได้
      $newname ='m_img'.$numrand.$date1.$type;
      $path_copy=$path.$newname;
      $path_link="m_img/".$newname;
      //คัดลอกไฟล์ไปยังโฟลเดอร์
      move_uploaded_file($_FILES['m_img']['tmp_name'],$path_copy);
    }

    //เช็คข้อมูลซ้ำ member
  $check = "SELECT  m_username 
            FROM td_member 
            WHERE m_username ='$m_username' OR m_cid ='$m_cid' ";
            /* WHERE m_username = '$m_username' "; */ //เช็คตัวเดียว

$result1 = mysqli_query($conn, $check) or die(mysqli_connect_error());

$num=mysqli_num_rows($result1);

if($num > 0) //เช็คข้อมูลซ้ำ admin
{
  echo "<script>";
  echo "alert(' ข้อมูลซ้ำ!!!! กรุณาเพิ่มใหม่อีกครั้ง !');";
  /* echo "window.history.back();"; */  //ย้อนกลับ แต่บางมี error ทำต่อไม่ได้ mysqli close
  echo "window.location ='member.php'; "; //เด้งไปหน้า
  echo "</script>";
}
else
{    //ปีกกาแรก
  $sql ="INSERT INTO dt_member
        (m_username,  m_password, m_pname, m_fname, m_lname, m_cid, m_email, m_address, m_phone, m_img, m_level)
        VALUES
        ('$m_username', '$m_password', '$m_pname', '$m_fname', '$m_lname', 'm_cid', '$m_email', '$m_address', '$m_phone', '$newname', '$m_level')";

  $result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_connect_error());
  
  mysqli_close($conn);
}   //ปีกกาปิด เช็คข้อมูลซ้ำ

    //จาวาสคริปแสดงข้อความเมื่อบันทึกเสร็จและกระโดดกลับไปหน้าฟอร์ม    
    if($result){
      echo "<script>";
      echo "alert('Add Member Succesfuly:เพิ่มข้อมูลบุคลากรสำเร็จว่ะ');";
      echo "window.location ='member.php'; "; //เด้งไปหน้า
      echo "</script>";
    } 
    else {      
      echo "<script>";
      echo "alert('ERROR Member Add!:ไม่สำเร็จว่ะ ว้ายๆ');";
      echo "window.location ='member.php'; ";
      echo "</script>";
    }
?>