<?php 

//Nom technique
define('LOC_Name', 'Ues');

//Titres des pages
define('Title_Create', 'Nouvel UES');
define('Title_Read', 'Détails de l\'UES');
define('Title_Update', 'Modifier l\'UES');

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
	'codeapogee' => array(
		'translate' => 'Code apogee',
		'sizeCol' => 100,
		'form' => array(
			'tag' => 'input',
			'type' => 'number',
			'required' => true
		)
	),
	'hcours' => array(
		'translate' => 'Heures de cours',
		'sizeCol' => 100,
		'form' => array(
			'tag' => 'input',
			'type' => 'number',
			'required' => true
		)
	),
	'htd' => array(
		'translate' => 'Heures de TD',
		'sizeCol' => 100,
		'form' => array(
			'tag' => 'input',
			'type' => 'number',
			'required' => true
		)
	),
	'htp' => array(
		'translate' => 'Heures de TP',
		'sizeCol' => 100,
		'form' => array(
			'tag' => 'input',
			'type' => 'number',
			'required' => true
		)
	),
	'ects' => array(
		'translate' => 'ECTS',
		'sizeCol' => 100,
		'form' => array(
			'tag' => 'input',
			'type' => 'number',
			'required' => true
		)
	),
	'contenu' => array(
		'translate' => 'Contenu',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'prerequis' => array(
		'translate' => 'Pré-requis',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'text'
		)
	),
	'universite_id' => array(
		'translate' => 'Université',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- université -'
		)
	),
	'lieu_id' => array(
		'translate' => 'Lieu',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- lieu -'
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
	'objectif' => array(
		'translate' => 'Objectifs',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'hetu' => array(
		'translate' => 'Heure d\'étude',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'number',
			'required' => true
		)
	),
	'gpcours' => array(
		'translate' => 'Groupe cours',
		'sizeCol' => 100,
		'form' => array(
			'tag' => 'input',
			'type' => 'number',
			'required' => true
		)
	),
	'gptd' => array(
		'translate' => 'Groupe TD',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'number',
			'required' => true
		)
	),
	'gptp' => array(
		'translate' => 'Groupe TP',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'number',
			'required' => true
		)
	),
	'contents' => array(
		'translate' => 'Contenu',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'aim' => array(
		'translate' => 'But',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
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
	'parcours_ues' => array(
		'parcour_id' => array(
			'translate' => 'Parcour',
			'sizeCol' => 250
		),
		'semestre_id' => array(
			'translate' => 'Semestre',
			'sizeCol' => 250
		),
		'type_id' => array(
			'translate' => 'Type',
			'sizeCol' => 250
		)
	),
	'sections_ues' => array(
		'section_id' => array(
			'translate' => 'Section',
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