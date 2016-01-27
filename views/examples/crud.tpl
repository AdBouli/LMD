<?php 

//Nom technique
define('LOC_Name', 'Examples');

//Titres des pages
define('Title_Create', 'Nouvel exemple');
define('Title_Read', 'Détails de l\'exemple');
define('Title_Update', 'Modifier l\'exemple');

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
	'example_id' => array(
		'translate' => 'Exemple',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- exemple -'
		)
	),
	'created' => array(
		'translate' => 'Créé le',
		'sizeCol' => 150
	),
	'modfied' => array(
		'translate' => 'Modifié le',
		'sizeCol' => 150
	)
];

include(VIEW.'crud/'.$page.'.tpl')

/*

'' => array(
	'translate' => '',
	'sizeCol' => ,
	'form' => array(
		'tag' => '',
		'type' => '',
		'required' => 
	)
)

*/
 ?>