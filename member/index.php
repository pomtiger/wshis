
<?php 
    //require_once('../condb/condb.php');
    require_once("hder.php"); 

?>
<br>
<div class="row">    
    <div class="col-md-2">
        <?php require("menu_left.php"); ?>
    </div>
    <div class="col">
            <!-- <h5>MEMBER PAGE</h5>   --> 
            <H5>Hello สวัสดี : <?php  echo $m_pname, $m_fname,' ',$m_lname,' : ', $m_cid ?></H5>
            <?php
                $act =(isset($_GET['act']) ? $_GET['act'] : '');
                if ($act === 'edit_profile') {
                   require('member_profile_form_edit.php');
                }
            ?>
    </div>  
</div>