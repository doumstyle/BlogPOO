<?php

include_once 'config/config.php';
include_once 'Model/Database.php';
include_once 'Model/Article.php';

// Connexion à la base de données
$database = new Database();
$pdo = $database->connect();

$article = new Article($pdo);


$action = isset($_GET['action']) ? $_GET['action'] : 'home'; // Action par défaut


switch ($action) {
  case 'home':
    $articles = $article->getLastSixArticles();
    include_once 'templates/home.php';
    break;

  case 'list':
    $articles = $article->getArticles();
    include_once 'templates/home.php';
    break;

  case 'show':
    $articles = $article->getArticleById($_GET['id']);
    include_once 'templates/article.php';
    break;

  default:
    echo 'Page introuvable';
    break;
}

?>



<?php
include_once 'templates/footer.php';
?>