<?php 

	// $tasks = $app['database']->selectAll('todos', 'task');
	$users = $app['database']->selectAll('users');


	require 'views/index.view.php';


?>