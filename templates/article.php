<?php
include_once 'header.php';

?>

<h1 class="my-4 text-center"></h1>
<div class="container">
  <div class="card mb-4">
    <img src="public/images/<?= $articles['photo'] ?>" alt="Photo de l'article" class="card-img-top"
      style="height: 300px; object-fit: cover;">
    <div class="card-body">
      <small class="text-muted fst-italic"></small>
      <p class="card-text"><?= $articles['contenu']; ?></p>
      <a href="" class="btn btn-warning">Modifier</a>
      <a href="" class="btn btn-danger"
        onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet article ?');">Supprimer</a>
      <a href="index.php" class="btn btn-secondary">Retour à l'accueil</a>
    </div>
  </div>
</div>

<?php
include_once 'footer.php';
?>