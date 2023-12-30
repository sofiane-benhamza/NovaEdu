<?php
session_start();
//if user is logged in
if ($_SESSION['log']) {
    header("Location:../home/index.php");
    die();
}
if (isset($_GET['error'])) {
    $error = $_GET['error'];
    if ($error === "invalid_url")
        echo '<div class="bg-danger"> <h5 class="text-white text-center p-3"> erreur 404 </h5> </div>';
}
$url = $_SERVER['REQUEST_URI'];
$lastSlashPos = strrpos($url, "/");
if ($lastSlashPos !== false && (substr($url, $lastSlashPos + 1) === 'index.php' || substr($url, $lastSlashPos + 1) === 'index.html')) {
    $trimmedPath = str_replace('/index.php', '', $_SERVER['REQUEST_URI']);
    header('Location: ' . $trimmedPath . '?error=invalid_url');
}
$change_your_password = "veuillez changée votre mot de passe aussitôt que possible";
if (isset($_GET['error'])) {
    $error = $_GET['error'];
    if ($error != $change_your_password) {
        echo '<div class="bg-danger"> <h5 class="text-white text-center p-2">' . $error . '</h5> </div>';
    }
}
if ($error == $change_your_password) {
    if (isset($_SESSION['password'])) {
        $password = $_SESSION['password'];
        echo '<div class="bg-success"> <h6 class="text-white text-center">' . $error . '</h6><h5 class=" text-white text-center p-2"> votre mot de passe : ' . $password . '</h5></div>';
    }
}
$conn = new mysqli("127.0.0.1", "root", "", "novaedu");
if ($conn->connect_error) {
    echo "connection failed";
    die();
}
include "../../frontend/resources/recovery/head.html";
// Modify the content
$modifiedContent = str_replace('Créer un compte', 'Se connecter', ob_get_clean());
$modifiedContent = str_replace('../signup/', '../login/', $modifiedContent);
echo $modifiedContent;
include("../../frontend/resources/recovery/main.html");
include "../../frontend/resources/recovery/end.html";
?>
