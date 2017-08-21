<?php 

// namespace App\Controllers;

/**
* 
*/
class HomesController
{

	public function index()
	{
		$products = App::get('database')->selectAll('products');  //dd($products);

		return view('home-index', compact('products'));
	}

	public function home2()
	{
		// dd('test');
		return view('home-index2');
	}	

	public function about()
	{
		// require 'views/about.view.php';
		return view('about');
	}

	public function contact()
	{
		// require 'views/contact.view.php';
		return view('contact');
	}

}

 ?>