<?php
//require_once("../condb/condb.php");
//include("navbar.php");
//require_once('hder.php');

?>
<div class="container">
  <h5>:: จัดการข้อมูลส่วนตัว ::</h5>
  <form action="member_profile_form_edit_db.php" method="POST" enctype="multipart/form-data">
    <div class="row">
      <div class="form-group col-md-12">
        <label for="level">ระดับสิทธิ์</label>
        <select name="m_level" class="custom-select my-1 mr-sm-2" disabled>
          <option value="<?php echo $row["m_level"]; ?>">-<?php echo $row["m_level"]; ?>-</option>
          <option value="">-เลือกข้อมูล-</option>
          <?php
          $m_level = $row['m_level'];
          if ($m_level == 'ADMIN') {
            echo '<option value="USER">-USER-</option>';
          } else {
            echo '<option value="ADMIN">-ADMIN-</option>';
          }
          ?>
        </select>
      </div>
      <div class="form-group col-md-6">
        <label for="username">ชื่อผู้ใช้</label>
        <input name="m_username" type="text" required class="form-control" pattern="^[a-zA-Z0-9]+$" title="ภาษาอังกฤษหรือตัวเลขเท่านั้น" minlength="2" autocapitalize="off" value="<?php echo $row["m_username"]; ?>" disabled> <!-- ปิดไม่ให้แก้ไข -->
      </div>
      <div class="form-group col-md-6">
        <label for="password">รหัสผ่าน</label>
        <input name="m_password" type="password" class="form-control" pattern="^[a-zA-Z0-9]+$" minlength="2" value="<?php echo $row["m_password"]; ?>">
      </div>

      <div class="form-group col-md-2">
        <label for="pname">คำนำหน้าชื่อ</label>
        <input name="m_pname" type="text" required class="form-control" value="<?php echo $row["m_pname"]; ?>">
      </div>

      <div class="form-group col-md-5">
        <label for="Firstname">ชื่อ</label>
        <input name="m_fname" type="text" required class="form-control" value="<?php echo $row["m_fname"]; ?>">
      </div>

      <div class="form-group col-md-5">
        <label for="Lastname">นามสกุล</label>
        <input name="m_lname" type="text" required class="form-control" value="<?php echo $row["m_lname"]; ?>">
      </div>
      <div class="form-group col-md">
        <label for="CID">รหัสประจำตัว 13 หลัก **</label>
        <input name="m_cid" type="text" required class="form-control" value="<?php echo $row["m_cid"]; ?>">
      </div>

      <div class="form-group col-md-6">
        <label for="Email">อีเมล์</label>
        <input name="m_email" type="text" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" value="<?php echo $row["m_email"]; ?>">
        <!--ระวัง pattern-->
      </div>
      <div class="form-group col-md-12">
        <label for="Address">ที่อยู่</label>
        <textarea name="m_address" class="form-control" rows="1"><?php echo $row["m_address"]; ?></textarea>
      </div>

      <div class="form-group col-md-6">
        <label for="Phone">เบอร์โทรศัพท์</label>
        <input name="m_phone" type="text" class="form-control" pattern="^[0-9]+$" maxlength="10" value="<?php echo $row["m_phone"]; ?>">
      </div>




      <div class="row">
        <div class="form-group col-md-6">
          <label for="Phone">-ภาพสมาชิก-</label>

          <img src="../img/<?php echo $row['m_img']; ?>" width="100px">
          <br>
          <br>

          <label for="Phone">-เปลี่ยนรูปภาพ-</label>
          <input name="m_img" type="file" class="form-control" accept="image/*" />
        </div>
        </div>
        <div class="form-group col-md-6">
          <input type="hidden" name="m_img2" value="<?php echo $m_img; ?>"> <!-- ส่งชื่อภาพเก่า ถ้าไม่มีภาพเก่าใช้ภาพเดิม -->
          <input type="hidden" name="m_id" value="<?php echo $m_id; ?>">
          <button type="submit" class="btn btn-success btn-sm" id="btn"> <span class="glyphicon glyphicon-saved"></span>บันทึก</button>
        </div>
      

    </div>
  </form>
</div>


<!-- <div class="form-group">
            <!--<div class="col-sm-3" align="right"> ชื่อ-สกุล             
            <div class="col-sm-6" align="center">            
              <select name="m_pname" class="custom-select my-1 mr-sm-2">
              <option value="<?php// echo $row["m_pname"]; ?>">-<?php// echo $row["m_pname"]; ?>-</option>
                <option value="">-เลือกคำนำหน้า-</option>
                <option value="นาย">นาย</option>
                <option value="นาง">นาง</option>
                <option value="น.ส.">น.ส.</option>
                <option value="ด.ช.">ด.ช.</option>
                <option value="ด.ญ.">ด.ญ.</option>
              </select>
            </div>
          </div> -->