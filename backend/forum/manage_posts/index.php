<?php
session_start();
if (!$_SESSION['log']) {
  header("Location:../../login/");
}
if (isset($_GET['error'])) {
  $error = $_GET['error'];
  if ($error === "invalid_url")
    echo '<div class="bg-danger"> <h5 class="text-white text-center p-3"> erreur 404 </h5> </div>';
}
$url = $_SERVER['REQUEST_URI'];
$lastSlashPos = strrpos($url, "/");
if ($lastSlashPos !== false && ( substr($url, $lastSlashPos + 1) === 'index.php' || substr($url, $lastSlashPos + 1) === 'index.html')) {
  $trimmedPath = str_replace('/index.php', '', $_SERVER['REQUEST_URI']);
  header('Location: ' . $trimmedPath . '?error=invalid_url');
}
include './comps/head.php';
$conn = new mysqli("127.0.0.1", "root", "", "novaedu");
if ($conn->connect_error) {
  echo "connection failed";
  die();
}
$user_id = $_SESSION["id"];
echo "<br><br>";
$sql = "SELECT Posts.title, Posts.content, Posts.post_id
        FROM Posts
        WHERE Posts.user_id = {$user_id}
        ORDER BY Posts.post_id DESC";
$posts = $conn->query($sql);
$counter = 0;
if ($posts->num_rows > 0) {
  while ($row = $posts->fetch_assoc()) {
    echo "<br><br>
        <div class='container d-flex justify-content-center'>
        <div class='col-lg-6 col-md-8 col-sm-11 shadow-lg'>
          <div class='card'>
            <div class='card-body'>
              <div class='card-body d-flex justify-content-between align-items-center'>
                   <h5 class='card-title'>{$row['title']}</h5>
                   <form method='post' action='./actions/delete_post.php'>
                   <input class='d-none' value='{$row['post_id']}' name='post_id' id='post_id'>
                   <button type='submit' class='btn btn-danger'><i class='bi bi-trash'></i></button>
                   </form>
               </div>
              <h6 class='card-subtitle mb-2 text-muted'>
                <img class='border rounded-circle p-2 mx-auto mb-3' src='https://picsum.photos/80/80?random=" . rand() . "'
                  style='width: 50px; height: 50px;'>
                <i>{$row['fname']} {$row['lname']}</i>
              </h6>
              <p class='card-text text-dark'>{$row['content']}</p>
            </div>
          </div>
        </div>
      </div><br><br>";
  }
} else {
  echo " <div class='container d-flex justify-content-center'>
<div class='col-lg-6 col-md-8 col-sm-11 shadow-lg'>
  <div class='card'>
    <div class='card-body'>
      <div class='card-body d-flex justify-content-between align-items-center'>
           <h5 class='card-title'>Vous avez aucune publication encore !</h5>
      </div>
      <div class='card-body d-flex justify-content-end'>
         <p class='btn btn-primary'><a href='../create_post' class='btn btn-primary'> Créer une publication</a> </p>
      </div>
   </div>
  </div>
</div>
</div>";
}
include './comps/end.php';
?>
