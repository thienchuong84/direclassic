<?php

require 'functions.php';
require 'Task.php';



$pdo = connectToDb();

// $statement = $pdo->prepare('SELECT * FROM todos');

// $statement->execute();

// var_dump($statement->fetchAll());
// var_dump($statement->fetchAll(PDO::FETCH_OBJ));

// $tasks = $statement->fetchAll(PDO::FETCH_OBJ);

// $tasks = $statement->fetchAll(PDO::FETCH_CLASS, 'Task');


$tasks = fetchAllTasks($pdo);

require 'index.view.php';