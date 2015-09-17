<?php
require("startBdd.php");

if (isset($_GET['tri'])) {
	$reponse = $bdd->query("SELECT * FROM sheet ORDER BY " . $_GET['tri']);
} elseif (isset($_GET['only'])) {

	switch($_GET['only']) {
		case '0':
			$only = 'Attente';
		break;
		
		case '1':
			$only = 'Relancé';
		break;
		
		case '2':
			$only = 'Entretien';
		break;
		
		case '3':
			$only = 'Refusé';
		break;
	}
	
	$reponse = $bdd->query('SELECT * FROM sheet WHERE etat="' . $only . '"');
} else {
	$reponse = $bdd->query("SELECT * FROM sheet ORDER BY id DESC");
}

$donnees = $reponse->fetchAll();

$reponse2 = $bdd->query("SELECT * FROM todolist ORDER BY id");
$donnees2 = $reponse2->fetchAll();

$count = $reponse->rowCount();