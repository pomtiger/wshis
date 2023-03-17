<?php
require_once('../condb/condb.php');

$query_m = "SELECT * FROM td_member ORDER BY m_id ASC" or die("Error:" . mysqli_connect_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result_m = mysqli_query($conn, $query_m);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:

?>

<h5>::จัดการข้อมูลสมาชิก:: <a href="member.php?act=add_member" class="btb btn-sm btn-primary"> +เพิ่มสมาชิก Add Member</a></h5>
 <?php       
echo '<table id="example2" class="table table-striped table-bordered table-hover table-striped" style="width:100%">';
//หัวข้อตารางถ้าเพิ่ม datatable เต้องพิ่ม <thead></thead> และเปลี่ยน td เป็น th "<id='example1' class='display table table-bordered table-hove' cellspacing='0'  >"
echo "
    <thead>
     <tr class='table-info' align='center'>
         <th>id</th>
         <th width='3%'>user</th>
         <th>pass</th>
         <th>name</th>                      
         <th>สิทธิ์</th>
         <th>email</th>
         <th>Phone</th>
         <th width='3%'>img</th>
         <th>regdate</th>
         <th width='5%'>Edit</th>
         <th width='5%'>Del</th>                 
       </tr>
     </thead>
   ";

while ($row = mysqli_fetch_array($result_m)) {
  echo "<tr>";
    echo "<td>" . $row["m_id"] . '.' . "</td> ";
    echo "<td>" . $row["m_username"] . "</td> ";
    echo "<td>" . $row["m_password"] . "</td> ";
    
    echo "<td>" . $row["m_pname"] . $row["m_fname"] . ' ' . $row["m_lname"] . "</td> ";
    //echo '<br>';
    //echo 'Level =' . $row["m_level"] . "</td> ";

    echo "<td>" . $row["m_level"] . "</td> ";
    echo "<td>" . $row["m_email"] . "</td> ";
    //echo "<td>" . $row["m_address"] . "</td> ";
    echo "<td>" . $row["m_phone"] . "</td> ";
    echo "<td align=center>" . "<img src='../img/" . $row["m_img"] . "' width='100%'>" . "</td>";
    echo "<td>" . date('d/m/yy', strtotime($row["m_regdate"])) . "</td> ";
      //แก้ไขข้อมูล *****ส่งพารามิเติอร์ edit ID  GET= member_form_edit.php
    echo "<td><a href='member.php?act=edit_member&M_ID=$row[0]' class='btn btn-warning btn-sm'>แก้ไข</a></td> ";
    //ลบข้อมูล  *****ส่งพารามิเติอร์ M_ID  GET= member_form_edit.php
    echo "<td><a href='member_form_del_db.php?M_ID=$row[0]' onclick=\"return confirm('Do you want to delete this record? !!!')\" class='btn btn-danger btn-sm'>ลบ</a></td> ";
  echo "</tr>";
}
  echo "
    <tfoot>
      <tr class='bg-primary' align='center'>
        <th>id</th>
        <th width='3%'>user</th>
        <th>pass</th>
        <th>name</th>                      
        <th>สิทธิ์</th>
        <th>email</th>
        <th>Phone</th>
        <th width='3%'>img</th>
        <th>regdate</th>
        <th width='5%'>Edit</th>
        <th width='5%'>Del</th>  
      </tr>
    </tfoot> ";
  echo '</table>';
//5. close connection
mysqli_close($conn);
