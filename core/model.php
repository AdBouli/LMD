<?php

class Model {

	use mysql;

	//Attributs
	protected $table; //nom de la table
	protected $primary; //nom de la clé primaire
	protected $field_create; //nom du champ de création
	protected $field_update; //nom du champ de modification
	protected $fkey = array(); //description des clés étrangères
	protected $Join = array(); //models des liaisons étrangères
	protected $ftable = array(); //description des tables de jointure
	protected $Links = array(); //nom_table => val_primary => nom_reference => display_reference, des tables de jointure
	protected $display; //champs d'affichage
	protected $arraysis = ['pdo', 'table', 'primary', 'field_create', 'field_update', 'fkey', 'Join', 'ftable', 'Links', 'display', 'arraysis']; //attributs techniques


	//Methodes

	//Constructeur
	public function __construct($id){
		//lecture des données
		if($id!=null){
			//Données principales
			$this->read($id);
			//Tables joins (clés étrangère)
			$this->setForeignKeys();
			//Tables étrangères (relations)
			$this->setForeignTables();
		}

	}

	public function setForeignKeys(){
		foreach ($this->fkey as $fkey => $table) {
			if($this->$fkey != null && $this->$fkey != 0){
				$this->Join[$table] = $this->getModel($table, $fkey);
			}
		}
	}

	public function setForeignTables(){
		$d = array();
		foreach ($this->ftable as $tRef => $kRef) {
			$mdl_rel = $this->getModel($tRef);
			foreach ($mdl_rel->fkey as $fkey => $tableRef) {
				$mdl_fkey = $this->getModel($tableRef);
				$d[$tRef][$fkey]['table'] = $tableRef;
				$d[$tRef][$fkey]['display'] = $mdl_fkey->display;
			}
		}
		$this->getRelShip($d);
	}

	public function getRelShip($d){
		$id = $this->getPrimary();
		foreach ($d as $table_rel => $value_rel) {
			$mdl_rel = $this->getModel($table_rel);
			// SELECT
			$query = "SELECT ".$table_rel.".".$mdl_rel->primary;
			$i = 1;
			foreach ($d[$table_rel] as $fkey => $value_fkey) {
				//if($value_fkey['table'] != $this->table){
					$query .= ", ".$value_fkey['table'].$i.".".$value_fkey['display'];
					$query .= " as '".array_search($value_fkey['table'], $mdl_rel->fkey)."'";
					$i++;
				//}
			}
			// FROM
			$query .= " FROM ".$table_rel;
			$i = 1;
			// INNER JOIN
			foreach ($d[$table_rel] as $fkey => $value_fkey) {
				//if($value_fkey['table'] != $this->table){				
					$mdl_fkey = $this->getModel($value_fkey['table']);
					$query .= " INNER JOIN ".$value_fkey['table']." ".$value_fkey['table'].$i;
					$query .= " ON ".$table_rel.".".$fkey." = ".$value_fkey['table'].$i.".".$mdl_fkey->primary;
					$i++;
				//}
			}
			// WHERE
			$query .= " WHERE";
			if(is_array($this->ftable[$table_rel])){
				foreach ($this->ftable[$table_rel] as $field) {
					$query .= " ".$table_rel.".".$field." = ".$id." OR";
				}
				//supprime le dernier 'or'
				$query = substr($query, -strlen($query), strlen($query)-3);
			}else{
				$query .= " ".$table_rel.".".$this->ftable[$table_rel]." = ".$id;
			}
			$result = $this->select($query);
			// result:
			$this->Links[$table_rel] = array();
			foreach ($result as $values) {
				$id_rel = $values[$mdl_rel->primary];
				$this->Links[$table_rel][$id_rel] = array();
				unset($values[$mdl_rel->primary]);
				foreach ($values as $key => $value) {
					$this->Links[$table_rel][$id_rel][$key] = $value;
				}
			}
		}
	}

	//@in: nom du modèle à charger (sans le suffix "Model")
	//@return: modèle
	public function getModel($name){
		require_once(MODL.$name.'.mdl');
		$mdl = $name.'Model';
		return new $mdl();
	}

	//@return: valeur de la clé primaire
	public function getPrimary(){
		$get = 'get'.$this->primary;
		return $this->$get();
	}

	//@return: valeur du champs display
	public function getDisplay(){
		$get = 'get'.$this->display;
		return $this->$get();
	}


	// __get
	public function __get($property){
		if(isset($this->$property)) {
			$ret = $this->$property;
		}else {
			$ret = false;
		}
		return($ret);
	}

	// __set
	public function __set($property, $value){
		if(isset($this->$property)) {
			$ret = true;
			$this->$property = $value;
		}else {
			$ret = false;
		}
		return($ret);
	}


	//CRUD

	//SAVE
	//@return: int nombre de ligne(s) traitée(s)
	public function save(){
		//vérification si id existe pour un insert ou un create
		$exist=false;
		if($this->getid()!=null){
			$exist=true;
		}
		//tète de requète
		//dans le cas d'un create
		if($exist){
			$setter = 'set'.$this->field_update;
			$this->$setter($this->getdate());
			$query = "UPDATE ".$this->table." SET ";
		}else{
			//dans le cas d'un update
			$setter = 'set'.$this->field_create;
			$this->$setter($this->getdate());
			$query = "INSERT INTO ".$this->table." VALUES (";
		}
		//valeurs
		foreach ($this as $key => $value) {
			//si ce n'est pas un attribut technique
			if(!in_array($key, $this->arraysis)){
				//dans le cas d'un create
				if($exist){
					$query .= $key.'="'.$value.'",';
				}else{
					//dans le cas d'un update
					$query .= '"'.$value.'",';
				}
			}
		}
		//supprime la dernière virgule
		$query = substr($query, -strlen($query), strlen($query)-1);
		//dans le cas d'un create
		if(!$exist){
			$query.=');';
		}else{
			//dans le cas d'un update
			$query.="WHERE ".$this->primary."='".$this->getid()."';";
		}
		//
		return $this->execute($query);
	}

	//READ
	//@in: $id valeur de la clé primaire de l'information à charger
	public function read($id){
		$datas = $this->select("SELECT * FROM ".$this->table." WHERE ".$this->primary." = $id");
		if (!empty($datas)) {
			foreach($datas[0] as $key => $value){
				//on utilise le setter correspondant
				$setattribs = "set".$key;
				$this->$setattribs($value);
			}
		}
	}

	//DELETE
	//@return: int nombre de ligne(s) traitée(s)
	public function delete(){
		$query = "DELETE FROM ".$this->table." WHERE ".$this->primary." = ".$this->getid().";";
		return $this->execute($query);
	}

	//FIND
	public function find($conditions = null, $orderby = null){
		//tête de requète
		$query = "SELECT * FROM ".$this->table." WHERE ";
		//si aucune condition
		if($conditions==null||$conditions==""){
			$query .= "1";
		}else{
			//les conditions séparées d'un 'AND'
			foreach ($conditions as $value) {
				$query .= $value. " AND ";
			}
			//supprime le dernier 'AND'
			$query = substr($query, -strlen($query), strlen($query)-4);
		}
		if($orderby == null || $orderby == ""){
			$query .= " ORDER BY ".$this->display." ASC";
		}else{
			$query .= " ORDER BY ".$orderby;
		}
		//
		return $this->select($query);

	}

	//Requêtes spécifiques:

	//renvoit un tableau contenant tous les enregistrament d'une table
	public function selectAll($orderby = null){
		if ($orderby == null){
			$query = 'SELECT * FROM '.$this->table.' WHERE 1 ORDER BY '.$this->display.' ASC';
		}else{
			$query = 'SELECT * FROM '.$this->table.' WHERE 1 ORDER BY '.$orderby;
		}
		return $this->select($query);
	}

	//renvoit un tableau (id=>display) contenant tous les enregistrament d'une table
	public function listAll(){
		$all = $this->select('SELECT id, '.$this->display.' FROM '.$this->table.' ORDER BY 2 ASC');
		$data = array();
		foreach ($all as $key => $value) {
			$data[$value[$this->primary]] = $value[$this->display];
		}
		return $data;
	}

	//renvoie l'object sous forme de tableau
	public function toTable(){
		$datas = array();
		foreach ($this as $key => $value) {
			if(!in_array($key, $this->arraysis)){
				$datas[$key] = $value;
			}
		}
		return $datas;
	}

	//recupère la date du jour et l'heure au format yyyy-mm-dd hh:mm:ss
	public function getdate(){
		//ex : 2015-12-31 16:30:59
		return date('y-m-d H:i:s');
	}



}

?>