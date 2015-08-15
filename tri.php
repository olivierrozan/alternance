<?php
try {
	$bdd = new PDO('mysql:host=localhost;dbname=alternance', 'root', 'toor');
} catch(Exception $e) {
	die("Erreur : ". $e->getMessage());
}

$bdd->query('SET NAMES UTF8');
setlocale(LC_TIME, 'fra_fra');

if ($_REQUEST['triAjax'] == "true") {
	$triA = "ASC";
} elseif ($_REQUEST['triAjax'] == "false") {
	$triA = "DESC";
}

$reponse = $bdd->query("SELECT * FROM sheet ORDER BY " . $_REQUEST['nom'] . " " . $triA);

$donnees = $reponse->fetchAll();

echo json_encode($donnees);