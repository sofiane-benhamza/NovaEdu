<?php
session_start();
if (!isset($_SESSION['log']) || !$_SESSION['log']) {
    header("Location: ../login/");
    exit(); // Terminate script execution after redirecting
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
$conn = new mysqli("127.0.0.1", "root", "", "novaedu");
if ($conn->connect_error) {
    echo "connection failed";
    die();
}
$id = $_SESSION['id'];
include '../../frontend/resources/forum/head.html';
include '../../frontend/resources/forum/bar_new_post.html';
echo "<br><br>";
$sql = 'SELECT Posts.title, Posts.content, users.fname, users.lname, Posts.user_id, Posts.post_id,Posts.created_at
        FROM Posts
        INNER JOIN users ON users.id = Posts.user_id
        ORDER BY Posts.post_id DESC';
$posts = $conn->query($sql);
$counter = 0;
if ($posts->num_rows > 0) {
    //show 12 posts
    while ($counter < 12 && $row = $posts->fetch_assoc()) {
        echo "
        <div class='container d-flex justify-content-center'>
            <div class='col-lg-6 col-md-8 col-sm-11 shadow-lg'>
                <div class='card'>
                    <div class='card-body'>
                        <h5 class='card-title' style='font-weight: bold;text-align:center;'>{$row['title']}</h5><br>
                        <div class='d-flex align-items-center mb-3'>
                            <img class='border rounded-circle p-2 m-2' src='https://picsum.photos/50/50?random=" . rand() . "' style='width: 50px; height: 50px;' alt='Profile Image'>
                            <div class='ml-5 mt-3'>
                                <p class='mb-0 text-dark' style='font-weight:bolder;'>{$row['lname']} {$row['fname']}</p>
                                <p class='text-muted bold' style='font-size: 14px;'><i>{$row['created_at']}</i></p>
                            </div>
                        </div>
                        <p class='card-text text-dark'>{$row['content']}</p>
                    </div>
                    <h5 class='d-flex justify-content-center m-0'>
                        <hr width='100%'>
                    </h5>
                    <h6 class='mx-4 my-1 card-subtitle text-dark'>Comments</h6><br>
                    <ul class='list-group list-group-flush'>";
        $sqlComments = "SELECT Comments.content, users.fname, users.lname, Comments.user_id, Comments.comment_id, Comments.created_at
        FROM Comments
        INNER JOIN users ON users.id = Comments.user_id
        WHERE Comments.post_id = {$row['post_id']}
        ORDER BY Comments.comment_id DESC;";
        $comments = $conn->query($sqlComments);
        // show all comments !
        if ($comments->num_rows > 0) {
            while ($col = $comments->fetch_assoc()) {
                echo "
                    <li class='list-group-item'>
                        <div class='media'>
                            <div class='media-body'>
                                <div class='card-body d-flex justify-content-between align-items-center my-0'>
                                    <h6 class='d-flex align-items-center m-0'>
                                        <img class='border rounded-circle p-2 mx-auto mt-0'
                                            src='https://picsum.photos/80/80?random=" . rand() . "' style='width: 40px; height: 40px;'
                                            alt='Profile Image'> &nbsp;&nbsp;&nbsp;
                                        <p class='mt-3'>{$col['lname']} {$col['fname']}<br><i class='text-muted' style='font-size:12px;'>{$col['created_at']}</i></p>
                                    </h6>";
                if ($col['user_id'] == $id) {
                    echo "
                                    <form method='post' action='./actions/delete_comment.php'>
                                        <input class='d-none' value='{$col['comment_id']}' name='comment_id' id='comment_id'>
                                        <button type='submit' style='font-size:12px;' class='btn btn-danger'><i class='bi bi-trash'></i></button>
                                    </form>";
                }
                echo "
                                </div>
                                <p class='mx-5 my-0'>{$col['content']}</p><br>
                            </div>
                        </div>
                    </li>";
            }
        }
        echo "</ul>
            <div class='card-body'>
                <form method='post' action='./actions/save_comment.php'>
                    <div class='form-group'>
                        <label for='comment'>Leave a comment</label>
                        <input class='form-control' name='comment' id='comment' placeholder='Votre commentaire' />
                        <input type='text' class='d-none' name='post_id' id='post_id' value='{$row['post_id']}'/>
                    </div>
                    <button type='submit' class='btn btn-primary'>Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
<br><br>";
        $counter++;
    }
}
include '../../frontend/resources/forum/end.html';
?>
