<?php

function dd($arr)
{
	echo "<pre>";
	die(var_dump($arr));
	echo "</pre>";
}

function view($name, $data = [])
{
	// data là 1 array được gửi qua hàm compact
	extract($data);

	return require "views/{$name}.view.php";
}

function redirect($path)
{
	header("Location: /{$path}");
}

function randomImages($str)
{
	if( ! is_string($str) )
		die("{$str} is not a string.");

	$arr = explode("|", $str); //die(print_r($arr));

	$rand_key = array_rand($arr); //die(var_dump($arr[$rand_key[0]]));

	return $arr[$rand_key];
}

?>