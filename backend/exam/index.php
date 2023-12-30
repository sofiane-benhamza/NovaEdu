<?php
session_start();
if (!$_SESSION['log']) {
    header("Location:../login/");
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
    header('Location: ' . $trimmedPath . '../choice/?error=invalid_url');
}
if (isset($_POST['subject'])) {
    if (strlen($_POST['subject']) > 5) {
        $subject = $_POST['subject'];
    } else {
        header("Location:../choice/");
    }
}
// Use single quotes for strings
$id = $_SESSION['id'];
$fname = $_SESSION['fname'];
$conn = new mysqli("127.0.0.1", "root", "", "novaedu");
if ($conn->connect_error) {
    echo "connection failed";
    die();
}
$arr = range(1, 30);
$chosen_ids = array_rand($arr, 11); //get 11 random questions
$counter = 0;
echo "<script>var questions = [],subject = '$subject',userId = $id,fname='$fname';";
// Use double quotes to interpolate variables into the string
$sql = "SELECT * FROM `$subject` WHERE id IN ( $chosen_ids[0], $chosen_ids[1], $chosen_ids[2], $chosen_ids[3], $chosen_ids[4],
$chosen_ids[5], $chosen_ids[6], $chosen_ids[7], $chosen_ids[8], $chosen_ids[9], $chosen_ids[10])";
$result = $conn->query($sql);
unset($arr, $chosen_ids, $sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $id = mysqli_real_escape_string($conn, $row['id']);
        $question = mysqli_real_escape_string($conn, $row['question']);
        $reponseA = mysqli_real_escape_string($conn, $row['reponseA']);
        $reponseB = mysqli_real_escape_string($conn, $row['reponseB']);
        $reponseC = mysqli_real_escape_string($conn, $row['reponseC']);
        $solution = mysqli_real_escape_string($conn, $row['solution']);
        $temps = mysqli_real_escape_string($conn, $row['temps']);
        echo 'questions[' . $counter . '] = ["' . ($counter + 1) . '. ' . $question . '","' . $reponseA . '","' . $reponseB . '","' . $reponseC . '","' . $solution . '","' . $temps . '"];';
        $counter++; // Increment the counter for the next iteration
    }
    echo '</script>';
} else {
    header("Location:../choice/");
}
unset($row, $result, $counter);
include "../../frontend/resources/exam/head.html";
include "../../frontend/resources/exam/main.html";
include "../../frontend/resources/exam/end.html";
?>
