<?php 

//Nom technique
define('LOC_Name', 'Users');

//Titres des pages
define('Title_Create', 'Nouvel utilisateur');
define('Title_Read', 'Détails de l\'utilisateur');
define('Title_Update', 'Modifier l\'utilisateur');

//propriétés de chaque attributs
$attribs = [
	'id' => array(
		'translate' => 'Identifiant',
		'sizeCol' => 50
	),
	'username' => array(
		'translate' => 'Nom d\'utilisateur',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'password' => array(
		'translate' => 'Mot de passe',
		'sizeCol' => 150
	),
	'nom' => array(
		'translate' => 'Nom',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'prenom' => array(
		'translate' => 'Prénom',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'email' => array(
		'translate' => 'eMail',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'email',
			'required' => true
		)
	),
	'active' => array(
		'translate' => 'Active',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'number'
		)
	),
	'created' => array(
		'translate' => 'Créé le',
		'sizeCol' => 150
	),
	'modified' => array(
		'translate' => 'Modifié le',
		'sizeCol' => 150
	)
];

include(VIEW.'crud/'.$page.'.tpl')

 ?>