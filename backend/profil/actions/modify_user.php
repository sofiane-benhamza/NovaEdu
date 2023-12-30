<?php
session_start();
$email = $_SESSION['email'];
$Old_fname = $_SESSION['fname'];
$Old_lname = $_SESSION['lname'];
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$psOld = $_POST['psOld'];
$psNew = $_POST['psNew'];
if(empty($psNew)){
    $psNew = $psOld;
}
$conn = new mysqli("127.0.0.1", "root", "", "novaedu");
if ($conn->connect_error) {
    echo "Connection failed: " . $conn->connect_error;
    die();
}
if ($Old_fname != $fname || $Old_lname != $lname) {
    $sql = $conn->prepare("UPDATE `users` SET `fname`=?, `lname`=? WHERE `email`=?");
    $sql->bind_param("sss", $fname, $lname, $email);
    $sql->execute();
    $_SESSION['fname'] = $fname;
    $_SESSION['lname'] = $lname;
}
if ($psOld != $psNew) {
    // get password from database
    $sql = "SELECT password FROM users WHERE email = ?";
    $stmt = mysqli_stmt_init($conn);
    mysqli_stmt_prepare($stmt, $sql);
    mysqli_stmt_bind_param($stmt, "s", $email);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_bind_result($stmt, $password);
    mysqli_stmt_fetch($stmt);
    mysqli_stmt_close($stmt);
    if ($password != $psOld) {
        header("Location:../profil/index.php?ok=-1");
        die();
    } else {
        // Correct password
        $sql = $conn->prepare("UPDATE `users` SET `password`=?  WHERE `email`=?");
        $sql->bind_param("ss", $psNew, $email);
        $sql->execute();
    }
}
header("Location:../?ok=1");
?>
