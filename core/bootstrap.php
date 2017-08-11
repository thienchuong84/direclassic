<?php
$app = [];

$app['config'] = require 'config.php';

require 'functions.php';

// require 'Task.php';

// require 'core/Router.php';
// require 'core/Request.php';
// require 'core/database/Connection.php';
// require 'core/database/QueryBuilder.php';


// return  new QueryBuilder( Connection::make($app['config']['database']) );
$app['database'] = new QueryBuilder( Connection::make($app['config']['database']) );