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

?>