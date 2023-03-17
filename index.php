<?php require("hder.php"); ?>
<br>
<div class="row">
    <div class="col-md-2">
        <?php require_once("menu_left.php"); ?>
    </div>
    <div class="col-md">


        <div class="progress">
            <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
        <div class="progress">
            <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
        <div class="progress">
            <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
        <div class="progress">
            <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
        <div class="progress">
            <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
        </div>

        <br>
        <br>

        ////////////////////////////////
        <br>
        <br>
        
        <div class="spinner-border text-primary" role="status">
            <span class="sr-only">Loading...</span>
        </div>
        <div class="spinner-border text-secondary" role="status">
            <span class="sr-only">Loading...</span>
        </div>
        <div class="spinner-border text-success" role="status">
            <span class="sr-only">Loading...</span>
        </div>
        <div class="spinner-border text-danger" role="status">
            <span class="sr-only">Loading...................</span>
        </div>
        <div class="spinner-border text-warning" role="status">
            <span class="sr-only">Loading...</span>
        </div>
        <div class="spinner-border text-info" role="status">
            <span class="sr-only">Loading...</span>
        </div>
        <div class="spinner-border text-light" role="status">
            <span class="sr-only">Loading...</span>
        </div>
        <div class="spinner-border text-dark" role="status">
            <span class="sr-only">Loading...</span>
        </div>


        <?php //include("hn_list.php"); 
        ?>
    </div>
</div>