<?php 

//Nom technique
define('LOC_Name', 'Universites');

//Titres des pages
define('Title_Create', 'Nouvelle université');
define('Title_Read', 'Détails de l\'université');
define('Title_Update', 'Modifier l\'université');

//propriétés de chaque attributs
$attribs = [
	'id' => array(
		'translate' => 'Identifiant',
		'sizeCol' => 50
	),
	'nom' => array(
		'translate' => 'Nom',
		'sizeCol' => 300,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'ufr' => array(
		'translate' => 'U. Formation et Recherche',
		'sizeCol' => 250,
		'form' => array(
			'tag' => 'input',
			'type' => 'text'
		)
	),
	'adresse' => array(
		'translate' => 'Adresse',
		'sizeCol' => 250,
		'form' => array(
			'tag' => 'input',
			'type' => 'text'
		)
	),
	'master' => array(
		'translate' => 'Master',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text'
		)
	),
	'licence' => array(
		'translate' => 'Licence',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text'
		)
	)		,
	'siteweb' => array(
		'translate' => 'Site Web',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'text'
		)
	),
	'siteinscriptions' => array(
		'translate' => 'Site Inscriptions',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'text'
		)
	),
	'email' => array(
		'translate' => 'eMail',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'email'
		)
	),
	'active' => array(
		'translate' => 'Active',
		'sizeCol' => 100,
		'form' => array(
			'tag' => 'input',
			'type' => 'text'
		)
	),
	'created' => array(
		'translate' => 'Créé le',
		'sizeCol' => 150
	),
	'modified' => array(
		'translate' => 'Modifié le',
		'sizeCol' => 150
	),
	'ordre' => array(
		'translate' => 'Ordre',
		'sizeCol' => 100,
		'form' => array(
			'tag' => 'input',
			'type' => 'number'
		)
	)	
];

include(VIEW.'crud/'.$page.'.tpl')

/*

,
	'' => array(
		'translate' => '',
		'sizeCol' => ,
		'form' => array(
			'tag' => '',
			'type' => '',
			'required' => 
		

*/


 ?>