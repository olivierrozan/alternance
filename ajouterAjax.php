<?php
	include("init.php");
	
	$req = $bdd->prepare(' INSERT INTO sheet(nom, adresse, poste, etat, date_modif, email, commentaires) VALUES(:nom, :adresse, :poste, :etat, :date, :email, :commentaires) ');
	$req->execute(array(
		'nom' => $_POST["nom"],
		'adresse' => $_POST["adresse"],
		'poste' => $_POST["poste"],
		'etat' => $_POST["etat"],
		'date' => date("Y-m-d"),
		'email' => $_POST["email"], 
		'commentaires' => $_POST['com']
	));
	
	if (isset($_POST['tri'])) {
		header('Location:index.php?tri=' . $_POST['tri']);
	} else {
		header('Location:index.php');
	}
?>