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
$post_id = $_POST['post_id'];
// Insert post
$sql = $conn->prepare("DELETE FROM `Posts` WHERE Posts.post_id = ?");
$sql->bind_param("s", $post_id); // Updated parameter binding
$sql->execute();
// Check if the query executed successfully
if ($sql) {
    header("Location:../");
} else {
    echo "Error: " . $conn->error;
}
$sql->close();
$conn->close();
?>