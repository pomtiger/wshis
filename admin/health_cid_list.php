<?php   
    //require_once('hder.php');
    require_once('../condb/condbh.php');
   
    $query_cid =" SELECT 
                OPS.VN,OPS.HN,CONCAT(OPS.VSTDATE,' ',OPS.VSTTIME) AS VISIT,
                OPS.BPD,OPS.BPS,OPS.BW,OPS.CC,OPS.PE,OPS.PULSE,OPS.TEMPERATURE,OPS.RR,
                OPS.HEIGHT,OPS.FBS,OPS.BMI,P.CID
            FROM opdscreen OPS
            LEFT OUTER JOIN patient P ON OPS.HN=P.HN
            WHERE (OPS.CC LIKE '%ตรวจสุขภาพ%')
            AND P.CID=$m_cid
            ORDER BY OPS.VN DESC 
            LIMIT 20 " 
            or die("Error:" . mysqli_connect_error());

            //3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result
    $result_cid = mysqli_query($connh, $query_cid);
    
   //วันที่ ภาษาไทย   
   function DateThai($strDate)
   {
       $strYear = date("Y",strtotime($strDate))+543;
       $strMonth= date("n",strtotime($strDate));
       $strDay= date("j",strtotime($strDate));
       $strHour= date("H",strtotime($strDate));
       $strMinute= date("i",strtotime($strDate));
       $strSeconds= date("s",strtotime($strDate));
       $strMonthCut = Array("","ม.ค.","ก.พ.","มี.ค.","เม.ย.","พ.ค.","มิ.ย.","ก.ค.","ส.ค.","ก.ย.","ต.ค.","พ.ย.","ธ.ค.");
       $strMonthThai=$strMonthCut[$strMonth];
       return "$strDay $strMonthThai $strYear, $strHour:$strMinute";
   }


    echo "<h6>:: ตารางรายงานผลการตรวจสุขภาพ ::</h6>";
    echo '<table id="example3" class="table table-striped table-bordered table-hover table-striped" style="width:100%">';
        echo "
        <thead>
            <tr class='table-active' align='center'>
                <td>รายละเอียด</td>
                <td>วันที่</td>
                <td>HN</td>
                <td>VN</td>
                <td>BP</td>
                <td>BW</td>
                <td>CC</td>
                <td>PE</td>
                <td>PULES</td>                                
                <td>HEIGHT</td>
                <td>FBS</td>
                <td>BMI</td>
                <td>CID</td>
            </tr>
        </thead> ";
        while($row1 = mysqli_fetch_array($result_cid)) {           
                echo"<tr>";
                    echo"<td><a href='health.php?act=view_vn&VN_ID=$row1[0]' class='btn btn-warning btn-sm'>รายละเอียด</a></td> ";
                    //echo"<td>".date('d/m/Y H:i:s',strtotime($row1["VISIT"])) . "</td>";
                    echo"<td>".DateThai($row1["VISIT"]) . "</td>";
                    echo"<td>".$row1["HN"]  ."</td>";
                    echo"<td>".$row1["VN"] . "</td>";
                    echo"<td>".number_format($row1["BPD"]).'/'.number_format($row1["BPS"])."</td>";
                    echo"<td>".$row1["BW"] . "</td>";
                    echo"<td>".$row1["CC"] . "</td>";
                    echo"<td>".$row1["PE"] . "</td>";
                    echo"<td>".$row1["PULSE"] . "</td>";
                    echo"<td>".$row1["HEIGHT"] . "</td>";
                    echo"<td>".$row1["FBS"] . "</td>";
                    echo"<td>".$row1["BMI"] . "</td>";
                    echo"<td>".$row1["CID"] . "</td>";
                echo "</tr> ";           
            }
        echo"
        
        <tfoot>
            <tr class='bg-primary' align='center'>
                <td>รายละเอียด</td>
                <td>วันที่</td>
                <td>HN</td>
                <td>VN</td>
                <td>BP</td>
                <td>BW</td>
                <td>CC</td>
                <td>PE</td>
                <td>PULES</td>
                <td>HEIGHT</td>
                <td>FBS</td>
                <td>BMI</td>
                <td>CID</td>
            </tr>
        </tfoot> ";    
    echo'</table>' ;

   // mysqli_close($connh);  เปิดเพื่อให้หน้า vn ทำงานในหน้าเดียวกันได้
?>