<?php 

//Nom technique
define('LOC_Name', 'Parcours_Parcours');

//Titres des pages
define('Title_Create', 'Nouvelle relation parcour / parcour');
define('Title_Read', 'Détails de la  relation parcour / parcour');
define('Title_Update', 'Modifier la  relation parcour / parcour');

//propriétés de chaque attributs
$attribs = [
	'id' => array(
		'translate' => 'Identifiant',
		'sizeCol' => 50
	),
	'parcour_id1' => array(
		'translate' => 'Parcour 1',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- parcour -',
			'required' => true
		)
	),
	'parcour_id2' => array(
		'translate' => 'Parcour 2',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- parcour -',
			'required' => true
		)
	)
];

include(VIEW.'crud/'.$page.'.tpl')


 ?>