<?php
require_once('hder.php');
?>

<body>
    <P></P>
               
    <div class="row">
        <div class="col-md-2">
            <?php require_once("menu_left.php"); ?>
        </div>

        <div class="col-md-10">
            
            <?php
            $act = (isset($_GET['act']) ? $_GET['act'] : ''); //สร้างตัวแปร act ใน devt ไม่เหมือน
            if ($act == 'add_member') {
                include('member_form_add.php');

            } elseif ($act == 'edit_member') {
                include('member_form_edit.php');

            } else {
                include('member_list.php');
            }
            ?>
        </div>
    </div>
</body>