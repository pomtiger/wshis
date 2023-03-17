<?php
//include('h_a.php');
require_once('../condb/condb.php');

$edit_m_id = $_GET["M_ID"]; //ประกาศใว้

//2. query ข้อมูลจากตาราง:
$sql_m = "SELECT * FROM td_member WHERE m_id='$edit_m_id' ";

$result = mysqli_query($conn, $sql_m) or die("Error in query: $sql " . mysqli_connect_error());
$row = mysqli_fetch_array($result);
extract($row);

//เอาใว้ดูค่าที่รับเข้ามา
/*  echo $sql;
        echo '<pre>';  
        print_r($_GET);
        echo'</pre>';
        exit(); */
?>
<div class="container">
  <h5>::แก้ไขข้อมูลสมาชิก:: <a href="member.php?act=add_member" class="btb btn-sm btn-primary"> +เพิ่มสมาชิก Add Member</a></h5>
  <form name="member" action="member_form_edit_db.php" method="POST" id="member" class="form-horizontal" enctype="multipart/form-data">
    <div class="row">
      <div class="form-group col-md-12" align="left">
        <label for="level">ระดับ-สิทธิ์</label>
        <select name="m_level" class="custom-select my-1 mr-md-2">
          <option value="<?php echo $row["m_level"]; ?>">-<?php echo $row["m_level"]; ?>-</option>
          <option value="ADMIN">-ADMIN-</option>
          <option value="USER">-USER-</option>
        </select>
      </div>

      <div class="form-group col-md-6" align="left">
        <label for="username">Username</label>
        <input name="m_username" type="text" required class="form-control" pattern="^[a-zA-Z0-9]+$" title="ภาษาอังกฤษหรือตัวเลขเท่านั้น" minlength="1" autocapitalize="on" value="<?php echo $row["m_username"]; ?>"> <!-- ปิดไม่ให้แก้ไข -->
      </div>

      <div class="form-group col-md-6" align="left">
        <label for="password">Password </label>
        <input name="m_password" type="password" required class="form-control" pattern="^[a-zA-Z0-9]+$" title="ภาษาอังกฤษหรือตัวเลขเท่านั้น" minlength="2" value="<?php echo $row["m_password"]; ?>">
      </div>


      <!-- <div class="form-group">      
            <div class="col-sm-6" align="center">            
              <select name="m_pname" class="custom-select my-1 mr-sm-2">
              <option value="<?php echo $row["m_pname"]; ?>">-<?php echo $row["m_pname"]; ?>-</option>
                <option value="">-เลือกคำนำหน้า-</option>
                <option value="นาย">นาย</option>
                <option value="นาง">นาง</option>
                <option value="น.ส.">น.ส.</option>
                <option value="ด.ช.">ด.ช.</option>
                <option value="ด.ญ.">ด.ญ.</option>
              </select>
            </div>
          </div> -->
      <div class="form-group col-md-2" align="left">
        <label for="password">คำนำหน้าชื่อ </label>
        <input name="m_pname" type="text" class="form-control" minlength="2" value="<?php echo $row["m_pname"]; ?>">
      </div>
      <div class="form-group col-md-5" align="left">
        <label for="password">ชื่อ </label>
        <input name="m_fname" type="text" required class="form-control" value="<?php echo $row["m_fname"]; ?>">
      </div>
      <div class="form-group col-md-5" align="left">
        <label for="password">นามสกุล </label>
        <input name="m_lname" type="text" required class="form-control" value="<?php echo $row["m_lname"]; ?>">
      </div>

      <div class="form-group col-md-6" align="left">
        <label for="password">เลขบัตรประจำตัว 13 หลัก **</label>
        <input name="m_cid" type="text" class="form-control" value="<?php echo $row["m_cid"]; ?>">
      </div>

      <div class="form-group col-md-6" align="left">
        <label for="password">อีเมลล์ </label>
        <input name="m_email" type="text" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" value="<?php echo $row["m_email"]; ?>">
        <!--ระวัง pattern-->
      </div>

      <div class="form-group col-md-6" align="left">
        <label for="password">เบอร์โทรศัพท์ </label>
        <input name="m_phone" type="text" class="form-control" pattern="^[0-9]+$" maxlength="10" value="<?php echo $row["m_phone"]; ?>">
      </div>
    </div>
    <div class="row">
      <div class="form-group col-md-6" align="left">
        <label for="password">ที่อยู่ </label>
        <textarea name="m_address" class="form-control" rows="2"><?php echo $row["m_address"]; ?></textarea>
      </div>
    </div>

    <div class="row">
      <div class="form-group col-md-6" align="left">
        <label for="img">รูปภาพสมาชิก </label>
        <img src="../img/<?php echo $row['m_img']; ?>" width="100px">
        <br>
        <br>
        <label for="img">-เปลี่ยนรูปภาพ- </label>        
        <input name="m_img" type="file" class="form-control" accept="image/*" />
      </div>
    

      <div class="row">
        <div class="form-group col-md-6" align="left">
          <input type="hidden" name="m_img2" value="<?php echo $m_img; ?>"> <!-- ส่งชื่อภาพเก่า ถ้าไม่มีภาพเก่าใช้ภาพเดิม -->
          <input type="hidden" name="m_id" value="<?php echo $m_id; ?>">
          <button type="submit" class="btn btn-success btn-sm" id="btn"> <span class="glyphicon glyphicon-saved"></span>บันทึก</button>
        </div>
      </div>
    </div>  

  </form>
</div>