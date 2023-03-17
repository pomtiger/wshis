<?php
    //session_start();
    //require("condb/condb.php");
    //require_once("condb/condbh.php");
    require("navbar.php");
 
session_start();

/* echo '<pre>';
print_r($_SESSION);
echo '</pre>'; */

require_once('../condb/condb.php');
//สร้างตัวแปร จาก SESSION
$m_id =$_SESSION['m_id'];
$m_level =$_SESSION['m_level'];



/* echo'm_id='.$m_id;
echo '<br>';
echo'm_fname='.$m_fname;
echo '<br>';
echo'm_level='.$m_level; */

//Show  user+รูป     
        //2. query ข้อมูลจากตาราง:
        $sql = "SELECT *  FROM td_member WHERE m_id='$m_id' ";

        $result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_connect_error());
        $row = mysqli_fetch_array($result);
        extract($row);

        $m_img=$row['m_img'];
        $m_fname =$row['m_fname'];


 
        /* echo $sql;
        echo '<br>';
        echo $m_img;
        echo '<pre>';
        print_r($row);
        echo '</pre>'; */

if ($m_level!='USER') {
  header("location: ../logout.php");
}
 

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="../css/buttons.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">

    <title>DATA Table Test</title>


    <script type="text/javascript" language="javascript" src="../js/jquery-3.5.1.js"></script>
    <script type="text/javascript" language="javascript" src="../js/jquery-3.5.1.slim.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/popper.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/dataTables.bootstrap4.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/buttons.bootstrap4.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/buttons.colVis.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/buttons.html5.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/buttons.print.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/jszip.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/pdfmake.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/vfs_fonts.js"></script>

    <!-- lengthChange: false, -->
    <script>
        $(document).ready(function () {
            var table = $('#example2').DataTable({                
                lengthChange: true,
                buttons: ['copy', 'excel', 'pdf', 'print', 'colvis'],                
            });
            table.buttons().container()
                .appendTo('#example2_wrapper .col-md-6:eq(0)');
        });
    </script> 
 

</head>