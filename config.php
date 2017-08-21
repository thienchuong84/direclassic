<?php 

return [

	'database' => [

		'name' => 'dire',

		'username' => 'root',

		'password' => '',

		'connection' => 'mysql:host=localhost',

		'option' => [
			PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\'',
			PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
			// PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING
		]

	]
]



?>