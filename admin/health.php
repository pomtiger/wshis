<?php
    require_once('hder.php');
?>
<br>
<div class="row">
    <div class="col-md-2">
    <?php require_once('menu_left.php');  ?>

    </div>
    <div class="col">
            <!-- <h5>MEMBER PAGE</h5>   --> 
            <H5> Health ผลตรวจสุขภาพ : <?php  echo $m_pname, $m_fname,' ',$m_lname,' : ', $m_cid ?></H5>
            <?php require_once('health_cid_list.php');?>

            <?php
                $act =(isset($_GET['act']) ? $_GET['act'] : '');
                if ($act === 'view_vn') {
                  require_once('health_vn_list.php');
                } 
                if ($act === '') {
                  //  include('vn_list.php');
                } 
                if($act === ''){
                  //  include('profile_form_edit.php');
                }
                else {
                   //require_once('health_cid_list.php');
                }
            ?>
    </div>  
</div>