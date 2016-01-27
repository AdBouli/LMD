<?php

trait mysql {

	public $pdo;

	//PDO
	public function connect(){
		$log = SGBD.":host=".HOSTNAME."; dbname=".DATABASE;
		$this->pdo = new PDO($log, USERNAME, PASSWORD, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''));
	}

	public function disconnect(){
		$this->pdo = null;
	}


	//SQL

	//execute une requète et retourne le nombre de lignes traitées
	public function execute($query){
		//echo $query."<br>";
		$this->connect();
		$results = $this->pdo->prepare($query);
		$results->execute();
		$this->disconnect();
		return $results->rowCount();
	}

	//execute une requete 'select'
	public function select($query){
		//echo $query."<br>";
		$this->connect();
		$results = $this->pdo->prepare($query);
		$results->execute();
		$this->disconnect();
		return $results->FetchAll(PDO::FETCH_ASSOC);
	}

	public function gettype($field){
		return $this->select("SHOW FIELDS FROM ".$this->table." where Field ='$field'");
	}

}
?>