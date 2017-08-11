<?php 

/**
* 
*/
class QueryBuilder
{
	protected $pdo;

	// khai báo biến pdo có type là class PDO
	public function __construct(PDO $pdo)
	{
		$this->pdo = $pdo;
	}

	public function selectAll($table)
	{
		$statement = $this->pdo->prepare("SELECT * FROM {$table}");

		$statement->execute();

		return $statement->fetchAll(PDO::FETCH_OBJ);
	}

	public function selectAllClass($table, $intoClass)
	{
		$statement = $this->pdo->prepare("SELECT * FROM {$table}");

		$statement->execute();

		return $statement->fetchAll(PDO::FETCH_CLASS, $intoClass);
	}	

	public function insert($table, $parameters)
	{
		// dd($parameters);
		// prepare sql query
		$sql = sprintf(
			'insert into %s (%s) values (%s)',
			$table,
			implode(', ', array_keys($parameters)),
			':' . implode(', :', array_keys($parameters))
		);
		// die($sql);	// return insert into users (name, age) values (:name, :age)
		 
		// vì câu lệnh có thể sai, như add thiếu column hay j đó, vì vậy ta dùng try catch
		try {
			$statement = $this->pdo->prepare($sql);

			$statement->execute($parameters);	
		}
		catch (PDOException $Exception) {
			// die('Whoops, something went wrong.\n');
			throw new Exception($Exception->getMessage( ));
		}
	}
}


?>