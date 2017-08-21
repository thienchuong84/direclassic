<?php 

// use App\Controllers\PagesController;

/**
* 
*/
class Router
{
	public $routes = [
		'GET' => '',
		'POST' => ''
	];

	public static function load($file)
	{

		$router = new static;	// same with $router = new Router; or $router = new self;

		// khởi tạo $router ở trên vì trong $file có sử dụng biến $router
		require $file;

		// return $router vì trong index nó dùng tiếp ->direct($uri)
		return $router;
	}

	public function get($uri, $controller)
	{
		$this->routes['GET'][$uri] = $controller;
	}

	public function post($uri, $controller)
	{
		$this->routes['POST'][$uri] = $controller;
	}	

	public function define($routes)
	{
		$this->routes = $routes;
	}

	public function direct($uri, $requestType)
	{	
		// dd($this->routes[$requestType]);
		// dd($uri); // return about
		// vì lúc này prop routes là multi array có dạng $routes[GET]['about'] = 'controllers/about' , vì thế cần thay đổi lại hàm bên dưới
		if( array_key_exists($uri, $this->routes[$requestType]) )
		{
			// return $this->routes[$requestType][$uri];
			// die(var_dump($this->routes[$requestType][$uri]));	//return PagesController@home
			// die(var_dump(explode("@", $this->routes[$requestType][$uri])));
			// die(var_dump(...explode("@", $this->routes[$requestType][$uri])));

			// return $this->callAction($controller, $action);
			return $this->callAction(...explode("@", $this->routes[$requestType][$uri]));
		}

		// die(var_dump($this->routes));		// die($uri);

		throw new Exception("No route defined for this URI.", 1);
		
	}

	protected function callAction($controller, $action)
	{
		$controller = new $controller;

		if( ! method_exists($controller, $action))
		{
			// die('test');
			throw new Exception(get_class($controller)." does not respond {$action} action.", 1);
		}

		return $controller->{$action}();
	}

}

?>