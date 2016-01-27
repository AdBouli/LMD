<?php 

//Nom technique
define('LOC_Name', 'Parcours');

//Titres des pages
define('Title_Create', 'Nouveau parcour');
define('Title_Read', 'Détails du parcour');
define('Title_Update', 'Modifier parcour');

//propriétés de chaque attributs
$attribs = [
	'id' => array(
		'translate' => 'Identifiant',
		'sizeCol' => 50
	),
	'nom' => array(
		'translate' => 'Nom',
		'sizeCol' => 1000,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	// 'description' => array(
	// 	'translate' => 'Description',
	// 	'sizeCol' => 300,
	// 	'form' => array(
	// 		'tag' => 'input',
	// 		'type' => 'text'
	// 	)
	// ),
	// 'insertion' => array(
	// 	'translate' => 'Insertion',
	// 	'sizeCol' => 200,
	// 	'form' => array(
	// 		'tag' => 'input',
	// 		'type' => 'text'
	// 	)
	// ),
	'mention_id' => array(
		'translate' => 'Mention',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- mention -'
		)
	),
	'pro' => array(
		'translate' => 'Pro',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'number'
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
	'metiers_parcours' => array(
		'metier_id' => array(
			'translate' => 'Métier',
			'sizeCol' => 250
		)
	),
	'parcours_parcours' => array(
		'parcour_id2' => array(
			'translate' => 'Parcours',
			'sizeCol' => 250
		)
	),
	'parcours_ues' => array(
		'ue_id' => array(
			'translate' => 'UES',
			'sizeCol' => 250
		)
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