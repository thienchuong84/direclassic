<?php 

	$tasks = $app['database']->selectAll('todos', 'task');


	require 'views/index.view.php';


?>