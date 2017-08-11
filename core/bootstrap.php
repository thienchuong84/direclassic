<?php
// $app = [];
// $app['config'] = require 'config.php';

App::bind('config', require 'config.php');

// die(var_dump(App::get('config')));



require 'functions.php';

// require 'Task.php';

// require 'core/Router.php';
// require 'core/Request.php';
// require 'core/database/Connection.php';
// require 'core/database/QueryBuilder.php';


// return  new QueryBuilder( Connection::make($app['config']['database']) );
// $app['database'] = new QueryBuilder( Connection::make($app['config']['database']) );
App::bind('database', new QueryBuilder( Connection::make(App::get('config')['database'])) );