<?php 

//Nom technique
define('LOC_Name', 'Mentions');

//Titres des pages
define('Title_Create', 'Nouvelle mention');
define('Title_Read', 'Détails de la mention');
define('Title_Update', 'Modifier mention');

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
	'nom_court' => array(
		'translate' => 'Nom court',
		'sizeCol' => 250,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'diplome_id' => array(
		'translate' => 'Diplôme',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- diplôme -',
			'required' => true
		)
	),
	'personne_id' => array(
		'translate' => 'Personne',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- personne -'
		)
	),
	'universite_id' => array(
		'translate' => 'Université',
		'sizeCol' => 250,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- université -'
		)
	),
	'portail_id' => array(
		'translate' => 'Portail',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- portail -'
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