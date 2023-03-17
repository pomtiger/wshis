<h5> กรุณาเลือกวันที่เริ่มต้นและวันที่สิ้นสุดในการดูรายงาน</h5>
<form action="" method="GET" name="q" class="form-horizontal">
    <class="form-group">
        <div class="col-sm-1 control-label">
            start:
        </div>
        <div class="col-sm-3">
            <input type="date" name="ds" class="form-control" required > <!-- ds1 ค่าวันที่จาก boostrap -->
        </div>        
        <div class="col-sm-1 control-label">
            end:
        </div>
        <div class="col-sm-3">
            <input type="date" name="dn" class="form-control" required> <!-- ds2 ค่าวันที่จาก boostrap -->
        </div>        
        <div class="col-sm-2" >
            <button type="submit" class="btn btn-primary btn-sm" name="act" value="by_date">GET Report</button> <!-- สังเกตุ name กับ value ส่ง paramiter จากหน้า index  -->       
        </div>
    </div>
</form>

<?php
      require_once('hder.php');
                //1. เชื่อมต่อ database:
      require_once('condb/condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
                //2. query ข้อมูลจากตาราง tb_admin:

        //สร้างตัวแปรรับค่าวันที่ ds1 ds2  
    $ds = $_GET['ds'];
    $dn = $_GET['dn']; 

        //สร้างเงื่อนไข
    if ($ds == '') {
           
    }else { //ปีกกาแรก
            
    $query = " SELECT l.*,m.m_fname 
        FROM db_login_log AS l 
        INNER JOIN db_member AS m ON l.ref_m_id=m.m_id 
        WHERE l.login_date BETWEEN '$ds 00:00:00.000000'AND '$dn 23:59:59.000000'
        ORDER BY l.log_id ASC "
        or die("Error:" . mysqli_connect_error());
                //3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
    $result = mysqli_query($conn, $query);
    
        echo '<h5>: ประวัติการล๊อกอิน By Date Select :</h5>';
        echo '<table border="2"  class="table table-hover table-bordered"" id="example9" >'; //h_a.php DATA table
            //หัวข้อตาราง 
            echo "
                <thead>
                    <tr align='center'class='success' >
                        <th>ลำดับ</th>
                        <th>user</th>                            
                        <th width='20%'>Date</>                                    
                    </tr>
                </thead>  ";
                
            while($row = mysqli_fetch_array($result)) {
            echo "<tr>"; 
                echo "<td align='center'>" .$i += 1 . "</td> ";                                           
                echo "<td>" .$row["m_fname"] . "</td> ";                        
                echo "<td align='center'>".$row["login_date"] . "</td> ";
                //echo "<td>" .date('d/m/y H:i:s', strtotime($row["login_date"])) . "</td> ";
            echo "</tr>";
            }
        echo "</table>";

        }; //ปีกกาปิด
                //5. close connection
    mysqli_close($conn);
?>