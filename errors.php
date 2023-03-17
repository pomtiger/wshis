<!--เก็บ error เป็น array เอาใว้แสดงตามหน้าต่างๆ โดยการ loop-->
<?php $errors = array(); ?>  

<!--นับ error ถ้ามากว่า 0 --><!--เอา error มาแสดง-->
<?php if (count($errors) > 0) : ?>
    <div class="error">
        <?php foreach ($errors as $error) : ?> 
            <p><?php echo $error ?></p>
        <?php endforeach ?>    
    </div>
<?php endif ?>