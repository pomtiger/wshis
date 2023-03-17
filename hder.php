<?php
    //session_start();

    include("navbar.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="css/buttons.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">

    <title>Buached Hospital Health Center</title>


    <script type="text/javascript" language="javascript" src="js/jquery-3.5.1.js"></script>
    <script type="text/javascript" language="javascript" src="js/jquery-3.5.1.slim.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/dataTables.bootstrap4.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/buttons.bootstrap4.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/buttons.colVis.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/buttons.html5.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/buttons.print.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/jszip.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/pdfmake.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/vfs_fonts.js"></script>

    <!-- lengthChange: false, -->
    <script>
        $(document).ready(function () {
            var table = $('#example1').DataTable({                
                lengthChange: true,
                buttons: ['copy', 'excel', 'pdf', 'print', 'colvis'],                
            });
            table.buttons().container()
                .appendTo('#example1_wrapper .col-md-6:eq(0)');
        });
    </script> 
 

</head>