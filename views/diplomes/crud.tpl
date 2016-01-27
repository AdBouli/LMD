<?php 

//Nom technique
define('LOC_Name', 'Diplomes');

//Titres des pages
define('Title_Create', 'Nouveau diplôme');
define('Title_Read', 'Détails du diplôme');
define('Title_Update', 'Modifier diplôme');

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
	'semestre_min' => array(
		'translate' => 'Min. de semestre(s)',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'number',
			'required' => true
		)
	),
	'semestre_max' => array(
		'translate' => 'Max. de semestre(s)',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'number',
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

include(VIEW.'crud/'.$page.'.tpl')

 ?>