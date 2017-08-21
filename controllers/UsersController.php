<?php 

// namespace App\Controllers;

/**
* 
*/
class UsersController
{
	
	public function index()
	{
		$users = App::get('database')->selectAll('users'); //dd($users);

		return view('users-index', compact('users'));
	}

	public function store()
	{
		App::get('database')->insert('users', [
											'name' => $_POST['name']
											// ,'age' => 30
										]);

		// header('Location: /users'); // return $this->index();
		return redirect('users');
	}
}


 ?>