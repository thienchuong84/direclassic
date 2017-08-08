<?php 

return [

	'database' => [

		'name' => 'dire',

		'username' => 'root',

		'password' => '',

		'connection' => 'mysql:host=localhost',

		'option' => [
			PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
			// PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING
		]

	]
]



?>