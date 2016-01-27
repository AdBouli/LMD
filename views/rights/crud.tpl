<?php 

//Nom technique
define('LOC_Name', 'Rights');

//Titres des pages
define('Title_Create', 'Nouveau droit');
define('Title_Read', 'Détails du droit');
define('Title_Update', 'Modifier droit');

//propriétés de chaque attributs
$attribs = [
	'id' => array(
		'translate' => 'Identifiant',
		'sizeCol' => 50
	),
	'universite_id' => array(
		'translate' => 'Université',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- universite -',
			'required' => true
		)
	),
	'user_id' => array(
		'translate' => 'Utilisateur',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- utilisateur -',
			'required' => true
		)
	),
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