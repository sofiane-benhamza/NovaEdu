<?php
session_start();
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$email = $_POST['email'];
$password = $_POST['password'];
$conn = new mysqli("127.0.0.1", "root", "", "novaedu");
if ($conn->connect_error) {
    echo "Connection failed";
    die();
}
$hashCode = bin2hex(random_bytes(32)); // Reducing the hash size to 64 characters
$sql = $conn->prepare("INSERT INTO `users` (`email`, `password`, `fname`, `lname`, `hashcode`) VALUES (?, ?, ?, ?, ?)");
$sql->bind_param("sssss", $email, $password, $fname, $lname, $hashCode);
if ($sql->execute()) {
    $id = $sql->insert_id; // Retrieve the last inserted ID
    // Save user data in session
    $_SESSION['id'] =  $id;
    $_SESSION['email'] =  $email;
    $_SESSION['fname'] =  $fname;
    $_SESSION['lname'] =  $lname;
    $_SESSION['log'] =  true;
    // Redirect the user
    header("Location: ../../home/");
    
    $filename = "../../profil/files/" . $fname . '_' . $lname . '.novaedu';
// Open the file for writing
$file = fopen($filename, "w");
if ($file) {
    // Write the content to the file
    fwrite($file, $hashcode);
    // Close the file
    fclose($file);
}

    // exit(); // Make sure to exit after redirection
} else {
    echo "Error: " . $conn->error;
}
$conn->close();
?>
