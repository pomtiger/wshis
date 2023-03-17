<?php 
    //session_start();
    require("hder.php"); 
?>
<br><br>
<body>
    <div class="container">
        <!--<img src="img/123.png" class="img-fluid" alt="Responsive image"> -->
        <?php// include("navbar.php"); ?>
        <h4> :: แบบฟอร์มลงทะเบียนสมาชิก : Register Form ::</h4>
        <form action="register_form_db.php" method="POST">
            <div class="form-row">                
                    <div class="form-group col-md-6">
                        <label for="Email">ชื่อผู้ใช้ *</label>
                        <input type="text" class="form-control" name="m_username" required class="form-control" placeholder="User Name" pattern="[a-zA-Z0-9]+$" title="ภาษาอังกฤษหรือตัวเลขเท่านั้น" minlength="1">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="Password">รหัสผ่าน *</label>
                        <input type="password" class="form-control" name="m_password" required class="form-control" placeholder="Password" pattern="[a-zA-Z0-9]+$" title="ภาษาอังกฤษหรือตัวเลขเท่านั้น" minlength="1">
                    </div>
                    <!--<div class="form-group col-md-2">
                    <label for="validationTooltip04">คำนำหน้าชื่อ</label>
                    <select class="custom-select" name="pname" required>
                        <option selected disabled value="">-เลือก-</option>
                        <option value="sex1">ชาย</option>
                        <option value="sex2">หญิง</option>
                    </select>
                    </div> -->
                    <!-- <div class="form-group col-md-2">
                        <label for="FistName">คำนำหน้าชื่อ</label>
                        <input type="text" class="form-control" name="m_fname" required class="form-control" placeholder="Name Title">
                    
                    </div> -->
                
                    <div class="form-group col-md-6">
                        <label for="FistName">ชื่อ *</label>
                        <input type="text" class="form-control" name="m_fname" required class="form-control" placeholder="First Name">
                        <!--required class="form-control" บังคับให้กรอก-->
                    </div>
                    <div class="form-group col-md-6">
                        <label for="LastName">นามสกุล</label>
                        <input type="text" class="form-control" name="m_lname" required class="form-control" placeholder="Last Name OR surname">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="Email">รหัสบัตรประจำตัว 13 หลัก **</label>
                        <input type="text" class="form-control" name="m_cid" required class="form-control" placeholder="CID" pattern="[0-9]{13}" title="กรุณาลงข้อมูลให้ถูกต้อง" maxlength="13">
                    </div>
                    <!-- <div class="form-group col-md-6">
                        <label for="Email">อีเมล์</label>
                        <input type="email" class="form-control" name="m_email" required class="form-control" placeholder="EMAIL">
                    </div> -->
                
                <!-- <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="textArea">ที่อยู่</label>
                        <textarea class="form-control" name="m_address" placeholder="Address" rows="3">Address</textarea>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="phonenumeber">โทรศัพท์</label>
                        <input type="text" class="form-control" name="m_phone" placeholder="Phone Number">
                    </div>
                </div> -->
                <!--<div class="form-row">
                <div class="form-group col-md-6">
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" name="file" aria-describedby="inputGroupFileAddon04">
                        <label class="custom-file-label" for="inputGroupFile04">เลือกรูปภาพ</label>
                    </div>
                </div>
            </div> -->
            </div>
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <button type="submit" name="register_form" class="btn btn-md btn-primary">ลงทะเบียน</button>                        
                    </div>
                    <div class="form-group col-md">
                        <p>เป็นสมาชิกแล้ว? : Already a member? <a href="login_form.php">Sign in</a></p>                        
                    </div>                
                </div>
        </form>
    </div>