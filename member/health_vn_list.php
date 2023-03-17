
<div class="container">
<?php   
    //require_once('../condb/condbh.php');

    $view_vn = $_GET["VN_ID"]; //ประกาศใว้ รับค่ามาจากหน้า cid <a href='health.php?act=view_vn&VN_ID=$row1[0]'

    $query_vn =" SELECT 
        ovst.VN,ovst.HN,  
        lab_order.confirm AS CONFIRM,  
        lab_items.lab_items_name AS LAB_ITEMS_NAME,  
        lab_order_result AS LAB_ORDER_RESULT,
        lab_items.lab_items_normal_value,
        lab_order.lab_items_code AS LAB_ITEMS_CODE,   
        ovst.vstdate AS VSTDATE  
        FROM ovst ovst   
        INNER JOIN patient p ON (ovst.hn = p.hn)  
        INNER JOIN lab_head ON lab_head.vn = ovst.vn  
        INNER JOIN lab_order ON (lab_order.lab_order_number = lab_head.lab_order_number)  
        INNER JOIN lab_items ON lab_items.lab_items_code = lab_order.lab_items_code  
        WHERE ovst.VN =$view_vn " 
        or die("Error:" . mysqli_connect_error());

            //3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result
    $result_vn = mysqli_query($connh, $query_vn);

    //วันที่ ภาษาไทย   
   function DateThai_VN($strDate)
   {
       $strYear = date("Y",strtotime($strDate))+543;
       $strMonth= date("n",strtotime($strDate));
       $strDay= date("j",strtotime($strDate));
       $strHour= date("H",strtotime($strDate));
       $strMinute= date("i",strtotime($strDate));
       $strSeconds= date("s",strtotime($strDate));
       $strMonthCut = Array("","ม.ค.","ก.พ.","มี.ค.","เม.ย.","พ.ค.","มิ.ย.","ก.ค.","ส.ค.","ก.ย.","ต.ค.","พ.ย.","ธ.ค.");
       $strMonthThai=$strMonthCut[$strMonth];
       return "$strDay $strMonthThai $strYear";
   }

    echo "<h6>:: ตารางแสดงผล LAB ::</h6>";
    echo '<table id="example2" class="table table-striped table-bordered table-hover table-striped" style="width:100%">';
        echo "
        <thead>
            <tr class='table-active' align='center'>
                
                <td>VN</td>
                <td>HN</td>
                <td>CONFIRM</td>                
                <td>LAB</td>
                <td>ผลแลป</td>
                <td>ค่าปกติ</td>
                <td>VSTDATE</td>
                
            </tr>
        </thead> ";
        while($row = mysqli_fetch_array($result_vn)) {           
                echo"<tr>";
                    echo"<td>".$row["VN"] . "</td>";
                    echo"<td>".$row["HN"] . "</td>";
                    echo"<td>".$row["CONFIRM"] . "</td>";
                    echo"<td>".$row["LAB_ITEMS_NAME"] . "</td>";
                    echo"<td>".$row["LAB_ORDER_RESULT"] . "</td>";
                    echo"<td>".$row["lab_items_normal_value"] . "</td>";
                    echo"<td>".DateThai_VN($row["VSTDATE"]) .  "</td>";
                    //echo"<td>".date('d/m/Y',strtotime($row1["VISIT"])) . "</td>";
                echo "</tr> ";           
            }
        echo"
        
        <tfoot>
            <tr class='bg-primary' align='center'>
                <td>VN</td>
                <td>HN</td>
                <td>CONFIRM</td>                
                <td>LAB</td>
                <td>LAB RESULT</td>
                <td>ค่าปกติ</td>
                <td>VSTDATE</td>                
            </tr>
        </tfoot> ";    
    echo'</table>' ;
    mysqli_close($connh);   
    //$connh -> close();
?>
</div>