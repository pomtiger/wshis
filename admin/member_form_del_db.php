
<?php
 
  require_once('../condb/condb.php');  
  //สร้างตัวแปรสำหรับรับค่า member_id จากไฟล์แสดงข้อมูล
  $member_id = $_REQUEST["M_ID"];

  //ลบข้อมูลออกจาก database ตาม member_id ที่ส่งมา

  $sql = "DELETE FROM td_member WHERE m_id='$member_id' ";
  $result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_connect_error());

  //จาวาสคริปแสดงข้อความเมื่อบันทึกเสร็จและกระโดดกลับไปหน้าฟอร์ม
  
  if($result){
    echo "<script type='text/javascript'>";
    echo "alert('Delete Member Succesfuly : ลบข้อมูลสำเร็จ');"; //ลบออกก็ได้ถ้าไม่ให้มันโชว์ตอนลบแล้ว
    echo "window.location = 'member.php'; ";
    echo "</script>";
  }
  else{
    echo "<script type='text/javascript'>";
    echo "alert('Error back to member delete again:ลบข้อมูลไม่สำเร็จ');";
    echo "</script>";
  }
?>