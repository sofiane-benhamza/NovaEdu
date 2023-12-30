<?php
session_start();
$conn = new mysqli("127.0.0.1", "root", "", "novaedu");
if ($conn->connect_error) {
    echo "connection failed";
    die();
}
if (!$_SESSION['log']) {
    header("Location:../login/");
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
include '../../frontend/resources/open/head.html';
$sql = 'SELECT users.id, MAX(users.fname) AS fname, users.lname, results.subject, results.note
FROM users
INNER JOIN results ON users.id = results.userId
GROUP BY users.id, users.lname, results.subject, results.note
ORDER BY results.note DESC';
$result = $conn->query($sql);
$counter = 0;
if ($result->num_rows > 0) {
    echo "<div class='container-xxl py-5 wow fadeInUp' data-wow-delay='0.1s' style='pointer-events:none;'>
    <div class='container'>
        <div class='text-center'>
            <h6 class='section-title bg-white text-center text-primary px-3'>dernière resultats</h6>
            <h1 class='mb-5'>tes camarades ont</h1>
        </div>
        <div class='owl-carousel testimonial-carousel position-relative'>";
    while ($counter < 12) {
        while ($row = $result->fetch_assoc()) {
            echo "
        <div class='testimonial-item text-center'>
            <img class='border rounded-circle p-2 mx-auto mb-3' src='https://picsum.photos/80/80?random=" . rand() . "' style='width: 80px; height: 80px;'>
            <h5 class='mb-0'>{$row['fname']} {$row['lname']}</h5>
            <p>ensaiste</p>
            <div class='testimonial-text bg-light text-center p-4'>
                <p class='mb-0'>{$row['note']}/10 en {$row['subject']}</p>
            </div>
        </div>";
        }
        $counter++;
    }
    echo "</div></div></div></div>";
}
include '../../frontend/resources/open/end.html';
?>
