<?php 

//Nom technique
define('LOC_Name', 'Personnes');

//Titres des pages
define('Title_Create', 'Nouvelle personne');
define('Title_Read', 'Détails de la personne');
define('Title_Update', 'Modifier personne');

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
	'prenom' => array(
		'translate' => 'Prénom',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'mail' => array(
		'translate' => 'eMail',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'email',
			'required' => true
		)
	),
	'section_id' => array(
		'translate' => 'Section',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- section -'
		)
	),
	'statut_id' => array(
		'translate' => 'Statut',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- satut -'
		)
	),
	'universite_id' => array(
		'translate' => 'Université',
		'sizeCol' => 200,
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