<?php 
	/**
	* 
	*/
	class Connection
	{
		

		public function make($config)
		{
			try {
				// return new PDO('mysql:host=127.0.0.1;dbname=dire', 'root', '');
				return new PDO(
						$config['connection'].';dbname='.$config['name'],
						$config['username'],
						$config['password'],
						$config['option']
					);

			} catch(PDOException $e) {
				die($e->getMessage());
			}			
		}
	}
 ?>