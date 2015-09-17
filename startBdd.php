<?php
try {
	$bdd = new PDO('mysql:host=localhost;dbname=alternance', 'root', '');
} catch(Exception $e) {
	die("Erreur : ". $e->getMessage());
}

$bdd->query('SET NAMES UTF8');
setlocale(LC_TIME, 'fra_fra');