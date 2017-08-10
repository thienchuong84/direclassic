<?php 

/**
* 
*/
class Router
{
	protected $routes = [];

	public static function load($file)
	{

		$router = new static;	// same with $router = new Router; or $router = new self;

		// khởi tạo $router ở trên vì trong $file có sử dụng biến $router
		require $file;

		// return $router vì trong index nó dùng tiếp ->direct($uri)
		return $router;
	}

	public function define($routes)
	{
		$this->routes = $routes;
	}

	public function direct($uri)
	{
		if(array_key_exists($uri, $this->routes))
		{
			return $this->routes[$uri];
		}

		// die(var_dump($this->routes));		// die($uri);

		throw new Exception("No route defined for this URI.", 1);
		
	}

}

?>