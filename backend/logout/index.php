<?php
session_start();
$email = $_SESSION['email'];
$fname = $_SESSION['fname'];
$lname = $_SESSION['lname'];
$filename = "../profil/files/" . $fname . '_' . $lname . '.novaedu';
unlink($filename);
$_SESSION = array();
session_destroy();
header("Location:../main/");
?>