<?php
session_start();
$email = $_POST['email'];
$password = $_POST['password'];
$conn = new mysqli("127.0.0.1", "root", "", "novaedu");
if ($conn->connect_error) {
    echo "Connection failed";
    die();
}
$sql = "SELECT * FROM users WHERE email = ?";
$stmt = $conn->prepare($sql);
if (!$stmt) {
    header("Location: ../?error=invalid");
    exit();
}
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();
if ($row = $result->fetch_assoc()) {
    $dbPassword = $row['password'];
    if ($dbPassword != $password) {
        header("Location: ../?error=something+went+wrong");
        exit();
    }
    // Password matches, set session variables
    $_SESSION['id'] = $row['id'];
    $_SESSION['email'] = $row['email'];
    $_SESSION['fname'] = $row['fname'];
    $_SESSION['lname'] = $row['lname'];
    $_SESSION['log'] = true;
    $hashcode = $row['hashcode'];
    // Set the file name and path
    $filename = "../../profil/files/" . $row['fname'] . '_' . $row['lname'] . '.novaedu';
    // Open the file for writing
    $file = fopen($filename, "w");
    if ($file) {
        // Write the content to the file
        fwrite($file, $hashcode);
        // Close the file
        fclose($file);
    } else {
        echo "Failed to open the file for writing.";
    }
    header("Location: ../../home/");
} else {
    header("Location: ../index.php?error=adresse+email+introuvable");
    exit();
}
?>