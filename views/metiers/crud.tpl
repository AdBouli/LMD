<?php 

//Nom technique
define('LOC_Name', 'Metiers');

//Titres des pages
define('Title_Create', 'Nouveau métier');
define('Title_Read', 'Détails du métier');
define('Title_Update', 'Modifier métier');

//propriétés de chaque attributs
$attribs = [
	'id' => array(
		'translate' => 'Identifiant',
		'sizeCol' => 50
	),
	'synonid' => array(
		'translate' => 'Identifiant synonyme',
		'sizeCol' => 100,
		'form' => array(
			'tag' => 'input',
			'type' => 'number',
			'required' => true
		)
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
	'accroche' => array(
		'translate' => 'Accroche',
		'sizeCol' => 200,
		'form' => array(
			'tag' => 'textarea'
		)
	),
	'description' => array(
		'translate' => 'Description',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'formation' => array(
		'translate' => 'Formation',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'formatdiplome' => array(
		'translate' => 'Format diplôme',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'formathorsregion' => array(
		'translate' => 'Format hors région',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'competences' => array(
		'translate' => 'Compétences',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'compliste' => array(
		'translate' => 'Liste des compétences',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'compemploi' => array(
		'translate' => 'Liste des emplois',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'emploidemain' => array(
		'translate' => 'Emplois de demain',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'emploichiffre' => array(
		'translate' => 'Emplois chiffrés',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'savezvous' => array(
		'translate' => 'Savez-vous',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'secteur_id' => array(
		'translate' => 'Secteur',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'select',
			'first_opt' => '- secteur -'
		)
	),
	'access_L' => array(
		'translate' => 'Acces licence',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'access_M' => array(
		'translate' => 'Acces master',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	),
	'access_D' => array(
		'translate' => 'Acces doctorat',
		'sizeCol' => 150,
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
	),
	'saisie' => array(
		'translate' => 'Saisie',
		'sizeCol' => 150,
		'form' => array(
			'tag' => 'input',
			'type' => 'text',
			'required' => true
		)
	)
];

$relations = [
	'disciplines_metiers' => array(
		'discipline_id' => array(
			'translate' => 'Discipline',
			'sizeCol' => 250
		)
	),
	'metiers_parcours' => array(
		'parcour_id' => array(
			'translate' => 'Parcours',
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
),

*/
 ?>