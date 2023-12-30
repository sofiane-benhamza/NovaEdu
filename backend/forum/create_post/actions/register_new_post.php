<?php
session_start();
if (!$_SESSION['log']) {
    header("Location:../../login/");
    exit(); // Terminate script execution after redirecting
}
$conn = new mysqli("127.0.0.1", "root", "", "novaedu");
if ($conn->connect_error) {
    echo "connection failed";
    die();
}
$user_id = $_SESSION["id"];
$post = $_POST['post'];
$title = $_POST['title'];
$currentDate = date('d-m-Y H:i'); // Changed date format
// Insert post
$sql = $conn->prepare("INSERT INTO `Posts`(`user_id`, `title`, `content`, `created_at`) VALUES (?,?,?,?)");
$sql->bind_param("ssss", $user_id, $title, $post, $currentDate); // Updated parameter binding
$sql->execute();
// Check if the query executed successfully
if ($sql) {
    header("Location:../../");
} else {
    echo "Error: " . $conn->error;
}
$sql->close();
$conn->close();
?>