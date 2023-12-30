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
$subject = $_POST['subject'];
$date = date('d-m-Y H:i');
$note = intval($_POST['note']);
$sql = $conn->prepare("INSERT INTO `results`(`userId`, `subject`, `note`, `date`) VALUES (?, ?, ?, ?)");
$sql->bind_param("ssss", $user_id, $subject, $note, $date);
$sql->execute();
$sql->close();
$conn->close();
?>
