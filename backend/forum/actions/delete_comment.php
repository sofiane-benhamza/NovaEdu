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
$user_id = $_SESSION['id'];
$comment_id = $_POST['comment_id'];
// Delete Comment
$sql = $conn->prepare("DELETE FROM `Comments` WHERE Comments.comment_id = ? AND Comments.user_id = ?");
$sql->bind_param("ss", $comment_id, $user_id); // Updated parameter binding
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