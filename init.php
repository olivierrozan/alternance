<?php
require("startBdd.php");

$tri = "";
$order = "";

if (isset($_GET['tri']) && isset($_GET['order'])) {
	$tri = $_GET['tri'];
	
	if ($_GET['order'] == 0) {
		$order = "ASC";
	} else {
		$order = "DESC";
	}
} else {
	$tri = "id";
	$order = "";
}

$reponse = $bdd->query("SELECT * FROM sheet ORDER BY " . $tri . " " . $order);

if (isset($_GET['only'])) {

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
}/* else {
	$reponse = $bdd->query("SELECT * FROM sheet ORDER BY id DESC");
}*/

$donnees = $reponse->fetchAll();
$count = $reponse->rowCount();

$reponse2 = $bdd->query("SELECT * FROM todolist ORDER BY id");
$donnees2 = $reponse2->fetchAll();