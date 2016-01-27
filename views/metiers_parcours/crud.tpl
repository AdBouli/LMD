<?php 

//Nom technique
define('LOC_Name', 'Metiers_Parcours');

//Titres des pages
define('Title_Create', 'Nouvelle relation métier / parcour');
define('Title_Read', 'Détails de la  relation métier / parcour');
define('Title_Update', 'Modifier la  relation métier / parcour');

//propriétés de chaque attributs
$attribs = [
	'id' => array(
		'translate' => 'Identifiant',
		'sizeCol' => 50
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
	'parcour_id' => array(
		'translate' => 'Parcour',
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