<?php 

//Nom technique
define('LOC_Name', 'Sections');

//Titres des pages
define('Title_Create', 'Nouvelle section');
define('Title_Read', 'Détails de la section');
define('Title_Update', 'Modifier section');

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
	'numero' => array(
		'translate' => 'N°',
		'sizeCol' => 100,
		'form' => array(
			'tag' => 'input',
			'type' => 'number',
			'required' => true
		)
	),
	'discipline_id' => array(
		'translate' => 'Discipline',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- discipline -'
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
	'sections_ues' => array(
		'ue_id' => array(
			'translate' => 'UES',
			'sizeCol' => 250
		)
	)
];

include(VIEW.'crud/'.$page.'.tpl')

 ?>