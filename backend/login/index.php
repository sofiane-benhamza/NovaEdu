<?php
session_start();
if (isset($_SESSION['log'])) {
    if ($_SESSION['log']) {
        header("Location:../home/");
        die();
    }
}
if (isset($_GET['error'])) {
    $error = $_GET['error'];
    echo '<div class="bg-danger"> <h5 class="text-white text-center p-3">veuillez verifier votre email et/ou mot de passe</h5> </div>';
}
$conn = new mysqli("127.0.0.1", "root", "", "novaedu");
if ($conn->connect_error) {
    echo "connection failed";
    die();
}
include "../../frontend/resources/login/head.html";
include "../../frontend/resources/login/main.html";
include "../../frontend/resources/login/end.html";
?>
