<div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3">Lien rapide</h4>
                <a class="btn btn-link" href="">à propos</a>
                <a class="btn btn-link" href="">Contactez nous</a>
                <a class="btn btn-link" href="">Conditions</a>
                <a class="btn btn-link" href="">Aide</a>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3">Contact</h4>
                <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>15240, route sidi bouzid, SAFI</p>
                <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+212 6 000 000 00</p>
                <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@ensas.ma</p>
                <div class="d-flex pt-2">
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3">Merci de votre visite!</h4>
                <p>Si vous souhaitez nous faire part de vos idées, un messagge vous suffit</p>
                <div class="position-relative mx-auto" style="max-width: 400px;">
                    <input class="form-control border-0 w-100 py-3 ps-4 pe-5" type="text" placeholder="votre message">
                    <button type="button"
                        class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">envoyez</button>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="copyright">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    &copy; <a class="border-bottom" href="#">NovaEdu</a>, All Right Reserved.
                    Designed By <a class="border-bottom" href="#">NovaEdu équipe</a>
                </div>
            </div>
        </div>
    </div>
</div>
<form style="display:none;" action="../exam/index.php" method="get">
    <input type="text" name="subject">
    <button type="submit">Submit</button>
</form>
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
<script src="../../../frontend/js/main.js"></script>
<script src="../../../frontend/js/jquery.js"></script>
<script>
    $('div.fadeInUp').click(function () {
        let subject = $(this).find('h5').text();
        $('form > input[name="subject"]').val(subject);
        $('form > button[type="submit"]').trigger('click');
    });
    $('#logoutDropdown').text(' <?php echo $_SESSION['fname'] ?> ');
    $('#logoutDropdownButton').text(' <?php echo $_SESSION['fname'] ?> ');
</script>
</body>
</html>
