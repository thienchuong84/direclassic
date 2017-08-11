<?php 

/**
* 
*/
class Request
{
	public static function uri()
	{
		// return trim($_SERVER['REQUEST_URI'], '/');

		// trong trường hợp user request /names?name=asd , hàm trim / sẽ vẩn được chuỗi names?name=asd và ko tìm  trong route
		// vì vậy cần edit lại code trên như sau
		return trim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), '/');
	}

	public static function method()
	{
		return $_SERVER['REQUEST_METHOD'];
	}
}



 ?>