<?php
session_start();
$email = $_POST['email'];
if (isset($_FILES['file'])) {
    $file = $_FILES['file'];
    // File properties
    $fileTmpLocation = $file['tmp_name'];
    $fileError = $file['error'];
    // Check if there was no error during the file upload
    if ($fileError === UPLOAD_ERR_OK) {
        // everything is good, read file into variable
        $code = file_get_contents($fileTmpLocation);
    } else {
        //Error uploading file, error code
        header("Location: ./index.php?error=fichier+n'est+pas+recue ... 372");
    }
} else {
    header("Location: ./index.php?error=quelque+chose+s'est+mal+passé ... 637");
}
$conn = new mysqli("127.0.0.1", "root", "", "novaedu");
if ($conn->connect_error) {
    echo "Connection failed";
    die();
}
// Get hashcode
$sql = "SELECT hashcode FROM users WHERE email = ?";
$stmt = mysqli_stmt_init($conn);
mysqli_stmt_prepare($stmt, $sql);
mysqli_stmt_bind_param($stmt, "s", $email);
mysqli_stmt_execute($stmt);
mysqli_stmt_bind_result($stmt, $hash);
mysqli_stmt_fetch($stmt);
mysqli_stmt_close($stmt);
//comparison
if (true) {
    $length = strlen($hash);
    $position = -1;
    for ($i = 0; $i < $length; $i++) {
        if ($hash[$i] !== $code[$i]) {
            $position = $i;
            break;
        }
    }
    if ($position !== -1) {
        header("Location: ./index.php?error=quelque+chose+s'est+mal+passé ... 512");
    } else {
        $sql = "SELECT password FROM users WHERE email = ?";
        $stmt = mysqli_stmt_init($conn);
        mysqli_stmt_prepare($stmt, $sql);
        mysqli_stmt_bind_param($stmt, "s", $email);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_bind_result($stmt, $password);
        mysqli_stmt_fetch($stmt);
        mysqli_stmt_close($stmt);
        header("Location: ./index.php?error=veuillez+changée+votre+mot+de+passe+aussitôt+que+possible");
        $_SESSION['password'] = $password;
    }
}
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();
if ($row = $result->fetch_assoc()) {
    $dbPassword = $row['password'];
    if ($dbPassword != $password) {
        header("Location: ./index.php?error=veuillez+verifier+votre+mot+de+passe");
        exit();
    }
    // Password matches, set session variables
    $_SESSION['id'] = $row['id'];
    $_SESSION['email'] = $row['email'];
    $_SESSION['fname'] = $row['fname'];
    $_SESSION['lname'] = $row['lname'];
    $_SESSION['password'] = $dbPassword;
    $_SESSION['log'] = true;
    header("Location: ../home/");
} else {
    header("Location: ./index.php?error=adresse+email+introuvable");
    exit();
}
?>