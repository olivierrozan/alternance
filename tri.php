<?php
require("startBdd.php");

if ($_REQUEST['triAjax'] == "true") {
	$triA = "ASC";
} elseif ($_REQUEST['triAjax'] == "false") {
	$triA = "DESC";
}

$reponse = $bdd->query("SELECT * FROM sheet ORDER BY " . $_REQUEST['nom'] . " " . $triA);

$donnees = $reponse->fetchAll();

echo json_encode($donnees);