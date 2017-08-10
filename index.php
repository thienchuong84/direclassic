<?php


// $database = require 'core/bootstrap.php';
require 'core/bootstrap.php';

$router = new Router;

// require 'routes.php';
// $uri = trim($_SERVER['REQUEST_URI'], '/');
// require $router->direct($uri);

// 3 lệnh trên ta có thể viết method thay thế như sau

require Router::load('routes.php')->direct(Request::uri());



