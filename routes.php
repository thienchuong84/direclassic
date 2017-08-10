<?php 

// To run this method, $router need initialize by new Router

$router->define([

	'' => 'controllers/index.php',

	'about' => 'controllers/about.php',

	'about/culture' => 'controllers/about-culture.php',

	'contact' => 'controllers/contact.php'

])

 ?>