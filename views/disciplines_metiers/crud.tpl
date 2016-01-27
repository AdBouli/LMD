<?php 

//Nom technique
define('LOC_Name', 'Disciplines_Metiers');

//Titres des pages
define('Title_Create', 'Nouvelle relation discipline / métier');
define('Title_Read', 'Détails de la  relation discipline / métier');
define('Title_Update', 'Modifier la  relation discipline / métier');

//propriétés de chaque attributs
$attribs = [
	'id' => array(
		'translate' => 'Identifiant',
		'sizeCol' => 50
	),
	'discipline_id' => array(
		'translate' => 'Disciplines',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- discipline -',
			'required' => true
		)
	),
	'metier_id' => array(
		'translate' => 'Métier',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- métier -',
			'required' => true
		)
	),
];

include(VIEW.'crud/'.$page.'.tpl')


 ?>