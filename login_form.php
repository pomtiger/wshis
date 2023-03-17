<?php 
    require("hder.php"); 
?>

<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <!--ให้มันเยื้องมาซ้ายหน่อย-->
        <div class="col-md-9">
            <form action="login_check.php" method="POST">
                <div class="form-group col-md-6">
                    <h4>:: Login Form ::</h4>
                </div>       
                <div class="form-group col-md-6 ">
                    <label for="Username">ชื่อผู้ใช้</label>
                    <input type="text" class="form-control" name="m_username" required class="form-control" placeholder="User Name">
                    <!--required class="form-control" บังคับกรอก-->
                </div>
                <div class="form-group col-md-6">
                    <label for="Password">รหัสผ่าน</label>
                    <input type="password" class="form-control" name="m_password" required class="form-control" placeholder="Password">
                </div>
                <div class="form-group col-md-6">
                    <button type="submit" name="login" class="btn btn-primary">Login</button>
                    ยังไม่ได้เเป็นสมาชิก
                    <a href="register_form.php">Go to Register</a>
                </div>
            </form>
        </div>
    </div>
</div>
</div>