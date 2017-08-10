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

	public function selectAll($table, $intoClass)
	{
		$statement = $this->pdo->prepare("SELECT * FROM {$table}");

		$statement->execute();

		return $statement->fetchAll(PDO::FETCH_CLASS, $intoClass);
	}
}


?>