<?php 
	/**
	* 
	*/
	class Connection
	{
		

		public function make()
		{
			try {
				return new PDO('mysql:host=127.0.0.1;dbname=dire', 'root', '');
			} catch(PDOException $e) {
				die($e->getMessage());
			}			
		}
	}
 ?>