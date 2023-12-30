<br><br>
<form method="post" action="./actions/register_new_post.php">
    <div class="col-lg-6 col-md-8 col-sm-10 container shadow-lg justify-content-center d-flex">
        <div class="w-75 justify-content-center py-2 d-flex">
            <div class="w-100">
                <div class="justify-content-center py-1 d-flex col-12">
                    <h1 class="bi bi-stickies"></h1>
                </div>
                <div class="form-group">
                    <div class="input-group align-items-center">
                        <input class="form-control my-3 text-dark" id="title" name="title" type="text"
                            placeholder="titre de la publication" required>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group align-items-center">
                        <textarea class="form-control my-3 text-dark" id="post" name="post"
                            placeholder="qu'est ce que tu pense ?" rows="4" required></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <p id="submit" class="btn btn-primary w-100 py-3 my-3">Enregistrer</p>
                        <button class="d-none" type="submit"></button>
                    </div>
                </div>
                <hr class="bg-primary w-100" style="height:3px;">
                <a href="../" class="btn btn-secondary w-100 py-1 my-1 font-sm">Annuler</a>
            </div>
        </div>
    </div>
</form>
<script>
    const ref = $("#submit");
    const rpost = $("#post");
    const rtitle = $("#title");
    const submit = $("button[type='submit']");
    ref.click(function () {
        let title = rtitle.val();
        let post = rpost.val();
        if (post.length > 20 && title.length > 0) {
            submit.trigger("click")
        } else {
            alert("remplissez s'il vous plait les champs *Correctement");
        }
    })
</script>
