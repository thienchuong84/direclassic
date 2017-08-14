<?php 

/**
* 
*/
class PagesController
{

	public function home()
	{
		
		$users = App::get('database')->selectAll('users');

		// require 'views/index.view.php';
		return view('index', compact('users'));
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