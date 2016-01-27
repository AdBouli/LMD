<?php 

//Nom technique
define('LOC_Name', 'Sections_Ues');

//Titres des pages
define('Title_Create', 'Nouvelle relation section / UES');
define('Title_Read', 'Détails de la  relation section / UES');
define('Title_Update', 'Modifier la  relation section / UES');

//propriétés de chaque attributs
$attribs = [
	'id' => array(
		'translate' => 'Identifiant',
		'sizeCol' => 50
	),
	'section_id' => array(
		'translate' => 'Section',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- section -',
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
	)
];

include(VIEW.'crud/'.$page.'.tpl')


 ?>