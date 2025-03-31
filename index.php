<?php

include_once 'header.php';

?>

<h1 class="my-4 text-center">Bienvenue sur le Blog</h1>
<h2 class="mb-4 text-center">Les derniers articles</h2>

<div class="container">
  <div class="row">

    <div class="col-md-4 mb-4">
      <div class="card h-100">
        <img src="public/images/image1.jpg" alt="Photo de l'article" class="card-img-top"
          style="height: 200px; object-fit: cover;">
        <div class="card-body">
          <h5 class="card-title"></h5>
          <p class="card-text">...</p>
          <a href="index.php?action=show&id=" class="btn btn-primary">Lire l'article</a>
        </div>
      </div>
    </div>

  </div>
</div>


<?php
include_once 'footer.php';
?>