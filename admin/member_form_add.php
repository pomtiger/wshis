<?php
//include('h_a.php');

?>
<form name="member" action="member_form_add_db.php" method="POST" id="member_add" class="form-horizontal" enctype="multipart/form-data">
<h6> : เพิ่มสมาชิก :</h6>
  <div class="form-group">
    <!--<div class="col-sm-3" align="right"> ชื่อ-สกุล  </div>-->
    <div class="col-sm-6" align="center">
      <select name="m_level" class="custom-select my-1 mr-sm-2">
        <option value="">-เลือกสิทธิ์-</option>
        <option value="ADMIN">ADMIN</option>
        <option value="USER">USER</option>
      </select>
    </div>
  </div>
  <div class="form-group">
    <!--<div class="col-sm-3" align="right"> Username  </div> -->
    <div class="col-sm-6" align="left">
      <input name="m_username" type="text" required class="form-control" placeholder="username" pattern="^[a-zA-Z0-9]+$" title="ภาษาอังกฤษหรือตัวเลขเท่านั้น" minlength="2" />
    </div>
  </div>

  <div class="form-group">
    <!--<div class="col-sm-3" align="right"> Password  </div>-->
    <div class="col-sm-6" align="left">
      <input name="m_password" type="password" required class="form-control" placeholder="password" pattern="^[a-zA-Z0-9]+$" minlength="2" />
    </div>
  </div>
  <div class="form-group">
    <!--<div class="col-sm-3" align="right"> ชื่อ-สกุล  </div>-->
    <div class="col-sm-6" align="center">
      <select name="m_pname" class="custom-select my-1 mr-sm-2">
        <option value="">-เลือกคำนำหน้า-</option>
        <option value="นาย">นาย</option>
        <option value="นาง">นาง</option>
        <option value="น.ส.">น.ส.</option>
        <option value="ด.ช.">ด.ช.</option>
        <option value="ด.ญ.">ด.ญ.</option>
      </select>
    </div>
  </div>
  <div class="form-group">
    <!--<div class="col-sm-3" align="right"> ชื่อ-สกุล  </div>-->
    <div class="col-sm-6" align="left">
      <input name="m_fname" type="text" required class="form-control" id="m_fname" placeholder="ชื่อ" />
    </div>
  </div>
  <div class="form-group">
    <!--<div class="col-sm-3" align="right"> ชื่อ-สกุล  </div>-->
    <div class="col-sm-6" align="left">
      <input name="m_lname" type="text" required class="form-control" id="m_lname" placeholder="สกุล" />
    </div>
  </div>
  <div class="form-group">
    <!--<div class="col-sm-3" align="right"> ชื่อ-สกุล  </div>-->
    <div class="col-sm-6" align="left">
      <input name="m_cid" type="text" required class="form-control" id="m_cid" placeholder="เลขบัตรประจำตัวประชน" pattern="^[0-9]+$" minlength="13" maxlength="13" />
    </div>
  </div>
  <div class="form-group">
    <!--<div class="col-sm-3" align="right"> ชื่อ-สกุล  </div>-->
    <div class="col-sm-6" align="left">
      <input name="m_email" type="text"  class="form-control" id="m_email" placeholder="e-mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" />
      <!--ระวัง pattern-->
    </div>
  </div>
  <div class="form-group">
    <!--<div class="col-sm-3" align="right"> ชื่อ-สกุล  </div>-->
    <div class="col-sm-6" align="left">
      <!-- <input  name="m_address" type="text" required class="form-control" id="m_address" placeholder="ที่อยู่" /> -->
      <textarea class="form-control" name="m_address" rows="2" placeholder="Address -ที่อยู่"></textarea>
    </div>
  </div>
  <div class="form-group">
    <!-- <div class="col-sm-3" align="right">ชื่อ-สกุล</div> -->
    <div class="col-sm-6" align="left">
      <!-- <label for="phonenumeber">โทรศัพท์</label> -->
      <input name="m_phone" type="text" class="form-control" id="m_tel" placeholder="เบอร์โทร 090010010" pattern="^[0-9]+$" maxlength="10" />
    </div>
  </div>
  <div class="form-group">
    <!-- <div class="col-sm-3" align="right">ชื่อ-สกุล</div> -->
    <div class="col-sm-6" align="left">
      <!-- <label for="phonenumeber">โทรศัพท์</label> -->
      <input name="m_img" type="file" class="form-control" placeholder="" required accept="image/*" />
    </div>
  </div>


  <div class="form-group">
    <div class="col-sm-6"> </div>
    <div class="col-sm-6" align="left">
      <button type="submit" class="btn btn-success btn-sm" id="btn"> <span class="glyphicon glyphicon-saved"></span>บันทึก</button>
    </div>
  </div>
</form>