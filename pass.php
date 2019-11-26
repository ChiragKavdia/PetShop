<?php
session_start();
include "db.php";


$oldpass = $_POST["oldpass"];
$newpass = $_POST["newpassword"];
$renpass = $_POST["renpassword"];



if (empty($oldpass) || empty($newpass) || empty($renpass) ) {
    echo "
    <div class='alert alert-warning'>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>PLease Fill all fields..!</b>
    </div>
    ";
    exit();
}


else
{

$oldpass = md5($oldpass);
$userid = $_SESSION["uid"];
$sql2 = " SELECT password FROM user_info WHERE user_id='$userid' ";
$run_query2 = mysqli_query($con,$sql2);
$pass = mysqli_fetch_array($run_query2);

if($oldpass != $pass[0]){

	echo "
    <div class='alert alert-warning'>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>Old Password does not match!</b>
    </div>
    ";
    exit();
}

if($newpass != $renpass){
	echo "
    <div class='alert alert-warning'>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>Password does not match!</b>
    </div>
    ";
    exit();

}

$newpass = md5($newpass);
$sql = " UPDATE user_info SET password='$newpass' WHERE user_id='$userid' ";
$run_query = mysqli_query($con,$sql);
    if ($run_query) {
        echo "
        <div class='alert alert-success'>
        <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
        <b>Password modification is successfull!!</b>
        </div>
        ";
    }

}

?>
