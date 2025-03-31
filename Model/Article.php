<?php
include_once 'config/config.php';
include_once 'Model/Database.php';
class Article
{
  private $pdo;

  public function __construct($pdo)
  {
    $this->pdo = $pdo;
  }

  public function getArticles(): mixed
  {
    $sql = "SELECT * FROM articles ORDER BY date_creation";
    $stmt = $this->pdo->prepare($sql);
    $stmt->execute();
    return $stmt->fetchAll();
  }
  public function getLastSixArticles(): mixed
  {
    $sql = "SELECT * FROM articles ORDER BY date_creation DESC LIMIT 6";
    $stmt = $this->pdo->prepare($sql);
    $stmt->execute();
    return $stmt->fetchAll();
  }

  public function getArticleById($id): mixed
  {
    $sql = "SELECT * FROM articles WHERE id = :id";
    $stmt = $this->pdo->prepare($sql);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->execute();
    return $stmt->fetch(PDO::FETCH_ASSOC);
  }
}