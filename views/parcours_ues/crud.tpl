<?php 

//Nom technique
define('LOC_Name', 'Parcours_Ues');

//Titres des pages
define('Title_Create', 'Nouvelle relation parcour / UES');
define('Title_Read', 'Détails de la  relation parcour / UES');
define('Title_Update', 'Modifier la  relation parcour / UES');

//propriétés de chaque attributs
$attribs = [
	'id' => array(
		'translate' => 'Identifiant',
		'sizeCol' => 50
	),
	'parcour_id' => array(
		'translate' => 'Parcour',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- parcour -',
			'required' => true
		)
	),
	'ue_id' => array(
		'translate' => 'UES',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- UES -',
			'required' => true
		)
	),
	'semestre_id' => array(
		'translate' => 'Semestre',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- semestre -',
			'required' => true
		)
	),
	'type_id' => array(
		'translate' => 'Type',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- type -',
			'required' => true
		)
	)
];

include(VIEW.'crud/'.$page.'.tpl')


 ?>