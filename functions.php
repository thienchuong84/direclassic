<?php

function dd($arr)
{
	echo "<pre>";
	die(var_dump($arr));
	echo "</pre>";
}

function connectToDb()
{
	try {
		return new PDO('mysql:host=127.0.0.1;dbname=dire', 'root', '');
	} catch(PDOException $e) {
		die($e->getMessage());
	}
}

function fetchAllTasks($pdo)
{
	$statement = $pdo->prepare('SELECT * FROM todos');

	$statement->execute();

	return $statement->fetchAll(PDO::FETCH_CLASS, 'Task');	
}

?>