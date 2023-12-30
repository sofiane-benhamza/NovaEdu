<?php
$conn = new mysqli("127.0.0.1", "root", "", "novaedu");
if ($conn->connect_error) {
    echo "connection failed";
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

include "../../frontend/resources/signup/index.php";
?>
