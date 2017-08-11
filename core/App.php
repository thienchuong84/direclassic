<?php 

class App
{
	protected static $registry;

	// bằng cách nào mà tham số đưa vào có thể là require hay new classs
	public static function bind($key, $value)
	{
		static::$registry[$key] = $value;	// câu lện tương đương $this->registry[$key] = $value nếu khai báo ko static ở biến $registry

		// bằng cách dùng array này mà ta có thể lưu đc tất cả nhũng j mình muốn, ví dụ nội dung require hay 1 object
	}

	public static function get($key)
	{
		// chú ý phải ktra có tồn tại key đó ko
		if( ! array_key_exists($key, static::$registry) )
		{
			throw new Exception("No {$key} is bound in the container.");
		}
		
		return static::$registry[$key];
	}
}





?>