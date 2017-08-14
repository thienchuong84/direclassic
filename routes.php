<?php 

// To run this method, $router need initialize by new Router

// $router->define([

// 	'' => 'controllers/index.php',

// 	'about' => 'controllers/about.php',

// 	'about/culture' => 'controllers/about-culture.php',

// 	'contact' => 'controllers/contact.php',

// 	'names' => 'controllers/add-name.php'

// ])

// $router->get('', 'controllers/index.php');
$router->get('', 'PagesController@home');

// $router->get('about', 'controllers/about.php');
$router->get('about', 'PagesController@about');

// $router->get('about/culture', 'controllers/about-culture.php');

// $router->get('contact', 'controllers/contact.php');
$router->get('contact', 'PagesController@contact');

// $router->post('names', 'controllers/add-name.php');

// var_dump($router->routes);

// như vậy ở chapter 19 này, khi thực hiện các method $router->get hay $router->post ở trên, nó sẽ nạp hay đưa vào multi array của routes và lưu vào đó
// 
// var_dump($router->routes); // kết quả như bên dưới
// 
// array (size=2)
//   'GET' => 
//     array (size=4)
//       '' => string 'controllers/index.php' (length=21)
//       'about' => string 'controllers/about.php' (length=21)
//       'about/culture' => string 'controllers/about-culture.php' (length=29)
//       'contact' => string 'controllers/contact.php' (length=23)
//   'POST' => 
//     array (size=1)
//       'names' => string 'controllers/add-name.php' (length=24)


$router->get('users', 'UsersController@index');
$router->post('users', 'UsersController@store');



 ?>