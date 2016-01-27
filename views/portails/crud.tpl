<?php 

//Nom technique
define('LOC_Name', 'Portails');

//Titres des pages
define('Title_Create', 'Nouveau portail');
define('Title_Read', 'Détails du portail');
define('Title_Update', 'Modifier portail');

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
	'universite_id' => array(
		'translate' => 'Université',
		'sizeCol' => 250,
		'required' => true,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- université -'
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