<?php 
header('refresh: 1; url=/');
// var_dump($_SERVER);

// var_dump($_REQUEST);

// var_dump($_GET);
// 
// var_dump('You type : ' . $_POST['name']);

// var_dump($app['database']);
// $app['database']->insert('users', [
// 									'name' => $_POST['name']
// 									// ,'age' => 30
// 								]);

App::get('database')->insert('users', [
									'name' => $_POST['name']
									// ,'age' => 30
								]);

echo 'new user <span style="color: red">' . $_POST['name'] . '</span> had created.';



?>