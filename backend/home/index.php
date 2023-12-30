<?php session_start(); if (!$_SESSION['log']) { header("Location:../login/"); } if (isset($_GET['error'])) { $error=$_GET['error']; if ($error==="invalid_url") echo '<div class=bg-danger> <h5 class="text-white text-center p-3"> erreur 404 </h5> </div>';
}
$url = $_SERVER['REQUEST_URI'];
$lastSlashPos = strrpos($url, "/");
if ($lastSlashPos !== false && (substr($url, $lastSlashPos + 1) === 'index.php' || substr($url, $lastSlashPos + 1) === 'index.html')) {
$trimmedPath = str_replace('/index.php', '', $_SERVER['REQUEST_URI']);
header('Location: ' . $trimmedPath . '?error=invalid_url');
}
$fname = $_SESSION['fname'];
$lname = $_SESSION['lname'];
$link = "../profil/files/" . $fname . '_' . $lname . '.novaedu';
?>
<!DOCTYPE html>
<html lang=fr>
<head>
<meta charset=utf-8>
<title>bienvenue au NovaEdu, une éducation d'un autre goût</title>
<meta content="width=device-width, initial-scale=1.0" name=viewport>
<link rel=icon type=image/x-icon href=../../frontend/ico.ico>
<link href=img/favicon.ico rel=icon>
<link rel=preconnect href=https://fonts.googleapis.com>
<link rel=preconnect href=https://fonts.gstatic.com crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel=stylesheet>
<link href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css rel=stylesheet>
<link href=https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css rel=stylesheet>
<link href=../../frontend/lib/animate/animate.min.css rel=stylesheet>
<link href=../../frontend/lib/owlcarousel/assets/owl.carousel.min.css rel=stylesheet>
<link href=../../frontend/css/bootstrap.min.css rel=stylesheet>
<link href=../../frontend/css/style.css rel=stylesheet>
</head>
<body>
<div id=spinner class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
<div class="spinner-border text-primary" style=width:3rem;height:3rem role=status>
<span class=sr-only>chargement...</span>
</div>
</div>
<nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
<a href=index.html class="navbar-brand d-flex align-items-center px-4 px-lg-5">
<h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>NovaEdu</h2>
</a>
<button type=button class="navbar-toggler me-4" data-bs-toggle=collapse data-bs-target=#navbarCollapse>
<span class=navbar-toggler-icon></span>
</button>
<div class="collapse navbar-collapse" id=navbarCollapse>
<div class="navbar-nav ms-auto p-4 p-lg-0">
<a class="nav-item nav-link active">Accueil</a>
<a href=../choice/ class="nav-item nav-link">fais un test</a>
<a href=../open/ class="nav-item nav-link">espace ouvert</a>
<a href=../forum/ class="nav-item nav-link">forum</a>
<div id=fix-phone-deconnect class="nav-item dropdown">
<a class="nav-link dropdown-toggle" id=logoutDropdown role=button data-bs-toggle=dropdown aria-expanded=false>
</a>
<ul class=dropdown-menu aria-labelledby=logoutDropdown>
<li><a class=dropdown-item href=../profil/>mon profil</a></li>
<li><a class=dropdown-item href=../logout/>Se déconnecter</a></li>
</ul>
</div>
<div class="nav-item dropdown">
<a class="btn btn-primary py-4 px-lg-5 d-none d-lg-block dropdown-toggle" id=logoutDropdownButton role=button data-bs-toggle=dropdown aria-expanded=false>
</a>
<ul class=dropdown-menu aria-labelledby=logoutDropdownButton>
<li><a class=dropdown-item href=../profil/>mon profil</a></li>
<li><a class=dropdown-item href=../logout/>Se déconnecter</a></li>
</ul>
</div>
</div>
</div>
</nav>
<div class="modal fade" id=tutorialModal tabindex=-1 role=dialog aria-labelledby=tutorialModalLabel aria-hidden=true>
<div class="modal-dialog modal-dialog-centered" role=document>
<div class=modal-content>
<div class=modal-header>
<h5 class=modal-title id=tutorialModalLabel>Bienvenue à NovaEdu</h5>
</div>
<div class=modal-body>
<h6>C'est quoi le fichier .novaedu ?</h6>
<p>Ce fichier vous permet de récupérer votre mot de passe en cas où vous l'auriez oublié, ne le
jamais partagez avec n'import qui.</p>
</div>
<div class=modal-footer>
<a href="<?php echo $link ?>" type=button class="btn btn-secondary" download>Télécharger</a>
<button type=button class="btn btn-primary tuto-button" data-dismiss=modal>J'ai compris</button>
</div>
</div>
</div>
</div>
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
<script src=https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js></script>
<script>$(document).ready(function(){$('.tuto-button').click(function(){$('#tutorialModal').modal('hide');});$('#tutorialModal').modal('show');});</script>
<div class="container-xxl py-5 category">
<div class=container>
<div class="text-center wow fadeInUp unclickable" data-wow-delay=0.1s>
<h6 class="section-title bg-white text-center text-primary px-3 unclickable">Services</h6>
<h1 class="mb-5 unclickable">References des professeurs</h1>
</div>
<div class="row g-3">
<div class="col-lg-7 col-md-6">
<div class="row g-3">
<div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay=0.1s>
<a class="position-relative d-block overflow-hidden" target=_blank href=https://www.youtube.com/channel/UCHxsdX2reQRZd1dAE5ht4Ag>
<img class=img-fluid src=img/sl.png alt>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>Chaine youtube<br>de Dr. El Abidi</h5>
<small class=text-primary>Physiques</small>
</div>
</a>
</div>
<div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay=0.3s>
<a class="position-relative d-block overflow-hidden" target=_blank href=https://www.youtube.com/@samirfatajou9255>
<img class=img-fluid src=img/mt.png alt>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>chaine youtube<br>de Dr. Fatajou</h5>
<small class=text-primary>Maths</small>
</div>
</a>
</div>
<div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay=0.5s>
<a class="position-relative d-block overflow-hidden" target=_blank href=https://www.youtube.com/channel/UCwBarMs_5R8RDhXCSsaPeRw>
<img class=img-fluid src=img/it.png alt>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>Chaine youtube<br>de Dr. Echchadi</h5>
<small class=text-primary>Informatiques</small>
</div>
</a>
</div>
</div>
</div>
<div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay=0.7s style=min-height:350px>
<a class="position-relative d-block h-100 overflow-hidden" target=_blank href=https://www.youtube.com/c/MathsavecAmmar>
<img class="img-fluid position-absolute w-100 h-100" src=img/mt.png alt style=object-fit:cover>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>chaine youtube<br>de Dr. Ammar</h5>
<small class=text-primary>Maths</small>
</div>
</a>
</div>
<div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay=0.7s style=min-height:350px>
<a class="position-relative d-block h-100 overflow-hidden" target=_blank href=https://sites.google.com/a/uca.ma/r-chahin/cours>
<img class="img-fluid position-absolute w-100 h-100" src=img/itt.png alt style=object-fit:cover>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>site web<br>de Dr. Chahin</h5>
<small class=text-primary>Informatiques</small>
</div>
</a>
</div>
<div class="col-lg-7 col-md-6">
<div class="row g-3">
<div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay=0.1s>
<a class="position-relative d-block overflow-hidden" target=_blank href="https://sites.google.com/ucam.ac.ma/bendaoud-saad/cours?authuser=0">
<img class=img-fluid src=img/ph.png alt>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>site web<br>de Dr. Bendaoud</h5>
<small class=text-primary>Physiques</small>
</div>
</a>
</div>
<div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay=0.3s>
<a class="position-relative d-block overflow-hidden" target=_blank href=https://sites.google.com/view/lailaelaimani>
<img class=img-fluid src=img/it.png alt>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>site web<br>de Dr. EL AIMANI</h5>
<small class=text-primary>Informatiques</small>
</div>
</a>
</div>
<div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay=0.5s>
<a class="position-relative d-block overflow-hidden" target=_blank href=https://www.youtube.com/channel/UCQRvonjNZpfrbi9UVdQhrCA>
<img class=img-fluid src=img/itt.png alt>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>Chaine youtube<br>de Dr. El AIMANI</h5>
<small class=text-primary>Informatiques</small>
</div>
</a>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="container-xxl py-5 category">
<div class=container>
<div class="text-center wow fadeInUp" data-wow-delay=0.1s>
<h6 class="section-title bg-white text-center text-primary px-3">Centre de Connaissances</h6>
<h1 class=mb-5> Sites Web utiles</h1>
</div>
<div class="row g-3">
<div class="col-lg-7 col-md-6">
<div class="row g-3">
<div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay=0.1s>
<a class="position-relative d-block overflow-hidden" target=_blank href=https://www.bibmath.net/>
<img class=img-fluid src=img/an.png alt>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>Anales en Maths</h5>
<small class=text-primary>Maths</small>
</div>
</a>
</div>
<div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay=0.3s>
<a class="position-relative d-block overflow-hidden" target=_blank href=https://learndigital.withgoogle.com/digitalgarage/courses>
<img class=img-fluid src=img/cd.png alt>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>google<br> certification</h5>
<small class=text-primary>auto-Formation</small>
</div>
</a>
</div>
<div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay=0.5s>
<a class="position-relative d-block overflow-hidden" target=_blank href=https://www.youtube.com/c/Freecodecamp>
<img class=img-fluid src=img/cdddd.png alt>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>Freecodecamp</h5>
<small class=text-primary>Auto-Formation</small>
</div>
</a>
</div>
</div>
</div>
<div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay=0.7s style=min-height:350px>
<a class="position-relative d-block h-100 overflow-hidden" target=_blank href=https://see.stanford.edu/>
<img class="img-fluid position-absolute w-100 h-100" src=img/cddd.png alt style=object-fit:cover>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>stanford certification <br> gratuite</h5>
<small class=text-primary>auto-Formation</small>
</div>
</a>
</div>
<div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay=0.7s style=min-height:350px>
<a class="position-relative d-block h-100 overflow-hidden" target=_blank href=https://www.youtube.com/c/KhanAcademyFrancais>
<img class="img-fluid position-absolute w-100 h-100" src=img/ch.png alt style=object-fit:cover>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>KhanAcademy<br>Francophone</h5>
<small class=text-primary>Chimie</small>
</div>
</a>
</div>
<div class="col-lg-7 col-md-6">
<div class="row g-3">
<div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay=0.1s>
<a class="position-relative d-block overflow-hidden" target=_blank href=https://www.codecademy.com/>
<img class=img-fluid src=img/cdd.png alt>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>CodeAcademy</h5>
<small class=text-primary>Auto-Formation</small>
</div>
</a>
</div>
<div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay=0.3s>
<a class="position-relative d-block overflow-hidden" target=_blank href=https://www.slidescarnival.com/category/free-templates>
<img class=img-fluid src=img/pt.png alt>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>ppt templates<br>gratuite</h5>
<small class=text-primary>Design</small>
</div>
</a>
</div>
<div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay=0.5s>
<a class="position-relative d-block overflow-hidden" target=_blank href=https://maharatech.gov.eg/>
<img class=img-fluid src=img/cd.png alt>
<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style=margin:1px>
<h5 class=m-0>Mahara<br>Tech</h5>
<small class=text-primary>auto-Formation</small>
</div>
</a>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay=0.1s>
<div class="container py-5">
<div class="row g-5">
<div class="col-lg-3 col-md-6">
<h4 class="text-white mb-3">Lien rapide</h4>
<a class="btn btn-link" href>à propos</a>
<a class="btn btn-link" href>Contactez nous</a>
<a class="btn btn-link" href>Conditions</a>
<a class="btn btn-link" href>Aide</a>
</div>
<div class="col-lg-3 col-md-6">
<h4 class="text-white mb-3">Contact</h4>
<p class=mb-2><i class="fa fa-map-marker-alt me-3"></i>15240, route sidi bouzid, SAFI</p>
<p class=mb-2><i class="fa fa-phone-alt me-3"></i>+212 6 000 000 00</p>
<p class=mb-2><i class="fa fa-envelope me-3"></i>info@ensas.ma</p>
<div class="d-flex pt-2">
<a class="btn btn-outline-light btn-social" href><i class="fab fa-twitter"></i></a>
<a class="btn btn-outline-light btn-social" href><i class="fab fa-facebook-f"></i></a>
<a class="btn btn-outline-light btn-social" href><i class="fab fa-youtube"></i></a>
<a class="btn btn-outline-light btn-social" href><i class="fab fa-linkedin-in"></i></a>
</div>
</div>
<div class="col-lg-3 col-md-6">
<h4 class="text-white mb-3">Merci de votre visite!</h4>
<p>Si vous souhaitez nous faire part de vos idées, un messagge vous suffit</p>
<div class="position-relative mx-auto" style=max-width:400px>
<input class="form-control border-0 w-100 py-3 ps-4 pe-5" type=text placeholder="votre message">
<button type=button class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">envoyez</button>
</div>
</div>
</div>
</div>
<div class=container>
<div class=copyright>
<div class=row>
<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
&copy; <a class=border-bottom href=#>NovaEdu</a>, All Right Reserved.
Designed By <a class=border-bottom href=https://htmlcodex.com>NovaEdu équipe</a>
</div>
</div>
</div>
</div>
</div>
<form style=display:none action=../exam/index.php method=get>
<input type=text name=subject>
<button type=submit>Submit</button>
</form>
<a href=# class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
<script src=https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js></script>
<script src=../../frontend/lib/wow/wow.min.js></script>
<script src=../../frontend/lib/easing/easing.min.js></script>
<script src=../../frontend/lib/waypoints/waypoints.min.js></script>
<script src=../../frontend/lib/owlcarousel/owl.carousel.min.js></script>
<script src=../../frontend/js/main.js></script>
<script src=../../frontend/js/jquery.js></script>
<script>$('div.fadeInUp').click(function(){let subject=$(this).find('h5').text();$('form > input[name="subject"]').val(subject);$('form > button[type="submit"]').trigger('click');});$('#logoutDropdown').text(' <?php echo $_SESSION['fname'] ?> ');$('#logoutDropdownButton').text(' <?php echo $_SESSION['fname'] ?> ');$(document).ready(function(){$('#tutorialModal').modal('show');});</script>
</body>
</html>
