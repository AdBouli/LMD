<?php 

//Nom technique
define('LOC_Name', 'Disciplines');

//Titres des pages
define('Title_Create', 'Nouvelle discipline');
define('Title_Read', 'Détails de la discipline');
define('Title_Update', 'Modifier discipline');

//propriétés de chaque attributs
$attribs = [
	'id' => array(
		'translate' => 'Identifiant',
		'sizeCol' => 50
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
	'created' => array(
		'translate' => 'Créé le',
		'sizeCol' => 150
	),
	'modified' => array(
		'translate' => 'Modifié le',
		'sizeCol' => 150
	)
];

$relations = [
	'disciplines_metiers' => array(
		'metier_id' => array(
			'translate' => 'Métier',
			'sizeCol' => 250
		)
	)
];

include(VIEW.'crud/'.$page.'.tpl')

 ?>